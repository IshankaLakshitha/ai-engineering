# Testing: Good vs Bad

## Scenario

An order cannot be submitted after its payment window expires.

## Bad: verifies a private implementation detail

```csharp
[Fact]
public void Submit_calls_the_expiry_helper()
{
    var order = CreateOrder();
    var service = new OrderService(order);

    service.Submit();

    service.VerifyExpiryHelperWasCalled();
}
```

This test couples to how the behavior is implemented. It could pass while an expired order is still accepted, and it breaks during safe refactoring.

## Good: proves the user-visible rule

```csharp
[Fact]
public void Submit_rejects_an_order_after_its_payment_window_expires()
{
    var order = CreateOrder(paymentExpiresAt: new DateTimeOffset(2026, 7, 1, 0, 0, 0, TimeSpan.Zero));
    var clock = new StubClock(new DateTimeOffset(2026, 7, 2, 0, 0, 0, TimeSpan.Zero));

    var result = new OrderService(clock).Submit(order);

    result.ShouldBe(SubmissionResult.PaymentWindowExpired);
}
```

This test controls time at a boundary and asserts the observable business outcome. The implementation can be refactored without weakening the behavior guarantee.

## Related documents

- `../knowledge/testing/unit-testing.md`
- `../knowledge/testing/mocking-and-test-doubles.md`
