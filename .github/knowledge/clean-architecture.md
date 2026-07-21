# Clean Architecture

- Domain is independent of delivery, persistence, and vendor SDKs.
- Application orchestrates use cases through ports and depends on the domain.
- Infrastructure implements inward-facing ports and depends inward.
- Controllers and message consumers translate protocols, then delegate.
- Services contain business logic; DTOs transport data only.
- See `../architecture/boundaries.md` for the framework's dependency rules.
