# MySazz Path to a Safe, Launch-Ready Product

**Prepared:** August 14, 2026  
**Repository baseline:** [`6b22432`](https://github.com/Jdrexx/SocialMediaMVP/commit/6b22432129f34c7a69524d5fb434148035e622c7)  
**Audience:** MySazz leadership, product, engineering, safety, and funding partners

## Executive Summary

- **The next destination should be a closed, monitored U.S. pilot.** The community MVP already contains a substantial membership, connection, privacy, messaging, and moderation foundation, but it should not yet carry sensitive real-member data at public scale.
- **Production safety is the critical path.** Database migrations, staging infrastructure, private object storage, session revocation, shared rate limiting, monitoring, backups, operational moderation, and independent legal and security review must precede broad acquisition.
- **The Resource Navigator should become trustworthy before it becomes intelligent.** Build a versioned, source-backed catalog and deterministic location search first. AI should only interpret requests and rank retrieved records; it must never invent providers, diagnose a member, or generate the crisis response.
- **A controlled pilot is achievable in roughly four to six months with a focused small team.** A broader public launch is more realistically a six-to-nine-month outcome, depending on specialist availability, source-access approvals, and issues discovered during security and beta testing.

## Recommended Destination

The business plan describes a national community for adults moving forward with lived experience. Members may use it for friendship, conversation, mutual support, resource discovery, and potentially romance on their own terms.

The correct near-term translation is a private web pilot with:

- invited adults;
- explicit eligibility, consent, and privacy boundaries;
- trained moderation and documented escalation;
- mutual connections before private messaging or video;
- one well-supported U.S. resource-search geography; and
- measurable safety, reliability, and usability targets.

A successful pilot is not simply a deployed website. It demonstrates that members can join safely, control sensitive profile details, form mutual connections, communicate without unwanted contact, find source-backed resources, report problems, and receive a timely operational response.

## Current Product Position

### What is already implemented

- Versioned 18+, lived-experience, confidentiality, policy, and non-medical-care attestations
- Email and password accounts with production email verification
- Authenticator-app two-factor authentication
- Privacy-controlled profiles and optional lived-experience information
- Member discovery with blocking and discoverability controls
- Posts, comments, likes, bookmarks, and notifications
- Mutual connection requests and connection-gated messaging
- Encrypted private-message storage
- WebRTC video signaling
- Post, member, and message reporting
- Administrative moderation and audit logging
- Member data export and permanent account deletion
- Report-aligned MySazz branding and responsive interface
- Automated tests and GitHub continuous integration

### What still blocks a sensitive-data production launch

- **Security and privacy:** independent review, revocable sessions, shared rate limits, key rotation, redacted monitoring, and tested incident response
- **Data and infrastructure:** versioned migrations, live PostgreSQL staging, concurrency validation, encrypted backups, and restore drills
- **Media and realtime:** private object storage, content validation and scanning, per-object authorization, TURN, and a retention policy
- **Community safety:** trained moderators, response targets, escalation procedures, appeals, staffing, and partner support
- **Resource navigation:** catalog schema, connectors, deterministic search, provenance cards, corrections, freshness alerts, and a reviewer queue
- **AI:** a controlled taxonomy, structured classifier, grounded reranking, evaluation set, privacy review, and explicit launch gates
- **Code quality:** many application and test files still disable TypeScript checking with `@ts-nocheck`

## Delivery Roadmap

The ranges below are planning estimates rather than commitments. Phases can overlap and should not simply be added together to infer a launch date.

| Phase                           | Primary outcome                                                |   Planning range | Exit gate                                                                                       |
| ------------------------------- | -------------------------------------------------------------- | ---------------: | ----------------------------------------------------------------------------------------------- |
| 1. Product and safety decisions | A precise, reviewed pilot definition                           |        1–2 weeks | Leadership approves geography, eligibility, privacy, moderation, pricing, and success criteria  |
| 2. Production foundation        | A realistic and recoverable staging system                     |        3–5 weeks | Database, private media, email, TURN, monitoring, and restore tests pass                        |
| 3. Trust and safety operations  | An organization capable of responding to member issues         |        2–4 weeks | Policies, trained coverage, escalation, appeals, and specialist reviews are rehearsed           |
| 4. Resource Navigator v1        | Verified local search without AI                               |        4–6 weeks | Imports, search, provenance, corrections, and freshness monitoring pass                         |
| 5. Constrained AI integration   | Grounded interpretation and reranking                          |        3–5 weeks | No fabricated providers or unsupported claims appear in the reviewed evaluation set             |
| 6. Closed beta                  | Evidence that members and operators can use the product safely |        4–6 weeks | Safety, support, accessibility, resource quality, retention, and reliability thresholds are met |
| 7. Controlled public launch     | Measured expansion and sustainable operations                  | After beta gates | Growth remains within moderation, support, verification, security, and infrastructure capacity  |

## Phase 1 — Resolve Product and Safety Decisions

Before additional feature work, MySazz leadership should approve:

- the pilot city, state, or partner community;
- whether membership remains self-attested;
- the final lived-experience and recovery eligibility language;
- which profile information is optional, private, or discoverable;
- how lived-experience information may and may not affect discovery;
- report-response and moderator-coverage expectations;
- warning, suspension, appeal, and permanent-removal policies;
- whether the pilot is free, sponsored, donation-supported, or paid; and
- the measurable definition of a successful pilot.

The business report's one-year recovery condition should receive legal, clinical, and lived-experience community review before it is enforced or encoded. The pilot should remain free or invitation-based while the team learns. Safety and crisis resources must always remain available without payment.

## Phase 2 — Make Staging Representative of Production

### Database and infrastructure

1. Introduce a versioned database migration system.
2. Complete the PostgreSQL path and provision a staging database.
3. Test all routes and concurrent write paths against PostgreSQL.
4. Create automated encrypted backups.
5. Perform and document a real restoration drill.
6. Establish least-privilege database access and key-rotation procedures.

### Authentication and application security

1. Add session versions so password changes, suspension, deletion, and security events invalidate existing sessions.
2. Move rate limits and login lockouts to a shared store before horizontal scaling.
3. Add centralized, redacted logs, error reporting, uptime monitoring, and alerts.
4. Add dependency and secret scanning to continuous integration.
5. Commission an independent application security and privacy review.
6. Test every object reference, media route, admin route, realtime event, export, and deletion path.

### Media, email, and video

1. Move uploads into private object storage.
2. Use short-lived access URLs and per-object authorization.
3. Validate file signatures rather than trusting declared MIME types.
4. Safely re-encode images and video and scan uploads for malware.
5. Configure and test production email delivery.
6. Add TURN service configuration for reliable video connections.
7. Define media and signaling metadata retention policies.

### Engineering quality

1. Remove `@ts-nocheck` incrementally, beginning with authentication, users, messages, moderation, uploads, and resource code.
2. Add explicit typechecking to continuous integration.
3. Add browser-level tests for registration, onboarding, connection, messaging, blocking, reporting, and deletion.
4. Add automated accessibility checks and manual keyboard and screen-reader review.

This phase is complete only when staging passes backup restoration, authorization, concurrency, email verification, deletion, blocking, and protected-media tests.

## Phase 3 — Turn Moderation Features into an Operating Capability

MySazz needs trained people and written procedures behind the existing reporting tools.

Create:

- least-privilege moderator and administrator roles;
- report-review and response-time targets;
- harassment, impersonation, exploitation, and unwanted-contact procedures;
- warning, suspension, appeal, and permanent-ban workflows;
- crisis-content guidance that clearly states MySazz is not a crisis service;
- moderator training scenarios and audit review;
- privacy and security incident-response procedures;
- a member-facing correction and support channel; and
- coverage and escalation plans for times when staff are unavailable.

Qualified counsel, privacy specialists, and mental-health or peer-support advisers should review eligibility, confidentiality claims, Terms, Privacy Policy, retention, deletion, mandatory-reporting implications, accessibility, nonprofit operations, payments, and sponsored memberships.

## Phase 4 — Build a Trustworthy Resource Navigator Without AI

### Catalog and evidence model

Add records for:

- resource sources;
- organizations;
- service locations;
- services and controlled categories;
- source evidence and retrieval history;
- automated and human verification;
- corrections and review status; and
- privacy-safe search audits.

Every resource record should retain its source identity, source record ID or URL, retrieval time, parser version, content hash, verification status, and next review date.

### Search experience

1. Ask the person for a ZIP code or city for each search.
2. Do not silently use device or profile location.
3. Convert the submitted location to an approximate search point in the application layer.
4. Retrieve results by radius and controlled filters before involving an AI model.
5. Show source, last-checked date, approximate distance, contact actions, and a provider-confirmation reminder.
6. Provide a prominent “report incorrect information” action.
7. Link directly to the authoritative directory when coverage or freshness is weak.

### Initial data sources

- Start with a small, human-reviewed crisis table independent of the automated pipeline.
- Import the official [HRSA Health Center dataset](https://data.hrsa.gov/data/download?titleFilter=Health+Center).
- Apply for [FindTreatment.gov API access](https://findtreatment.gov/api-request-form) in parallel.
- Treat the [211 National Data Platform](https://apiportal.211.org/) as a later connector until access, reuse terms, and its preview V2 APIs are appropriate for production.
- Add state, county, and nonprofit sources only through reviewed source-specific connectors.

### Approved-source scraping controls

MySazz should not operate a general web crawler. Any page scraper must:

- target only approved, allowlisted hosts;
- document license, terms, robots policy, refresh expectations, and a correction contact;
- block private and link-local networks and unapproved redirects;
- enforce strict response-size, content-type, timeout, and concurrency limits;
- sanitize imported content and treat it as hostile data;
- retain the previous good catalog version when an import fails;
- alert when source freshness thresholds are missed; and
- enter a reviewer queue before a new source becomes public.

## Phase 5 — Add AI as a Constrained Interpreter and Reranker

```text
Member request
    ↓
Deterministic crisis and safety check
    ↓
AI converts language into controlled filters
    ↓
Database retrieves verified nearby records
    ↓
AI reranks only those records
    ↓
Source-backed cards explain why each record matched
```

The AI is not the source of provider facts. It may:

- interpret ordinary language into an approved service taxonomy;
- identify preferences such as distance, language, cost, schedule, accessibility, or remote service;
- rerank records returned by deterministic retrieval; and
- explain a match using only stored source fields.

It may not:

- diagnose or recommend treatment;
- invent an organization, provider, service, price, insurance status, eligibility condition, or availability;
- search arbitrary URLs submitted by members;
- use private profile information without explicit purpose-specific consent;
- receive precise member ZIP codes or coordinates when broad geography is sufficient; or
- generate the authoritative crisis response.

Raw sensitive searches should not be retained by default. The model should receive only broad geography, controlled categories, preferences, and retrieved candidate fields. Structured output must reject unknown filters, provider IDs, or attributes.

For U.S. crisis behavior, use a fixed, human-reviewed interface that prominently offers official [988 call, text, and chat options](https://988lifeline.org/get-help/what-to-expect/) while explaining that MySazz is not an emergency or clinical service.

### AI launch gates

- Every displayed provider exists in the retrieved catalog.
- Every factual claim is grounded in stored source fields.
- Every result shows provenance and a last-checked date.
- No reviewed evaluation response fabricates a provider or provider attribute.
- Human-reviewed high-risk cases trigger the fixed safety interface.
- Low-confidence and stale-data cases fall back to authoritative directories.
- Reviewers test representative needs, languages, geographies, access constraints, and no-result cases.
- Privacy review confirms that precise location and raw sensitive prompts are not retained by default.

## Phase 6 — Run a Small, Instrumented Beta

Invite approximately 25–50 adults through trusted partner organizations. Combine product analytics with interviews because retention alone will not reveal whether members feel safe, respected, and able to form meaningful connections.

Monitor:

- registration and onboarding completion;
- successful connections and conversations;
- blocks and reports per active member;
- moderator response and resolution time;
- resource-search success and no-result rates;
- provider corrections and catalog freshness;
- member-reported safety and belonging;
- seven-day and thirty-day retention;
- accessibility and mobile usability;
- application errors and uptime;
- backup and restoration success; and
- security and abuse alerts.

Expand participation only when operational response remains reliable as usage grows.

## Phase 7 — Launch and Grow Carefully

After the beta gates pass:

- introduce subscriptions, sponsored memberships, and donations;
- establish member support and moderator staffing;
- publish clear safety, privacy, and resource-verification documentation;
- expand Resource Navigator coverage region by region;
- begin partnership outreach and limited marketing experiments; and
- consider native mobile applications after the web product is stable.

Third-party behavioral advertising should not be an early revenue dependency. Sensitive lived-experience and resource-search data create significant privacy and trust concerns even when advertising is technically possible.

## Recommended Next Repository Milestone

The next implementation milestone should contain:

1. A versioned migration framework and PostgreSQL staging environment.
2. Resource catalog and provenance migrations.
3. A human-reviewed crisis-resource table.
4. An HRSA importer with validation, versioning, and safe rollback behavior.
5. Deterministic ZIP or city radius search with explicit location consent.
6. Source-backed resource cards and a correction workflow.
7. Automated tests for privacy, provenance, stale data, failed imports, and correction handling.
8. CI improvements for explicit typechecking, dependency scanning, and browser-level critical-flow tests.

This produces a useful and defensible resource product before introducing model risk.

## Suggested First 30 Days

### Week 1

- Approve the pilot scope, geography, eligibility assumptions, and initial success measures.
- Assign product, engineering, moderation, legal/privacy, and resource-data owners.
- Create GitHub milestones and issues for the seven phases.
- Select PostgreSQL, object storage, email, monitoring, and TURN providers.

### Week 2

- Add the migration framework and initial PostgreSQL staging service.
- Design the resource catalog and evidence migrations.
- Define the controlled service taxonomy.
- Draft moderator escalation and incident-response procedures.

### Week 3

- Implement resource sources, organizations, locations, services, evidence, and verification records.
- Add the curated crisis table.
- Begin the HRSA importer and validation tests.
- Add session revocation and shared rate-limit design.

### Week 4

- Complete the first HRSA import into staging.
- Implement deterministic location and filter search.
- Build source-backed result cards and correction intake.
- Run the first backup restoration and authorization test cycle.
- Review progress against the pilot launch gates.

## Team and Specialist Needs

At minimum, the plan assumes:

- one experienced full-stack engineer;
- a founder or product owner empowered to resolve scope;
- part-time design and accessibility support;
- a trust-and-safety owner with moderator responsibility;
- legal and privacy counsel;
- a qualified mental-health, recovery, or peer-support adviser;
- a security reviewer; and
- a resource-data reviewer responsible for source quality and corrections.

The AI portion does not initially require a research team. A strong application engineer can integrate the constrained classifier and reranker once the catalog, taxonomy, evaluation cases, and safety rules exist.

## Decisions Still Needed From MySazz Leadership

- Which city, state, or partner community should host the first resource-search pilot?
- Will eligibility remain self-attested?
- How should the recovery-duration language change after professional and community review?
- Who owns moderation and safety escalation during the pilot?
- Is the first pilot free, sponsored, donation-supported, or paid?
- Which organization will apply for SAMHSA and 211 access and accept their reuse terms?
- What monthly infrastructure, specialist-review, and moderation budget is available?
- Which partners can recruit pilot members and provide structured feedback?

## Caveats and Assumptions

The delivery ranges are planning estimates, not commitments. They assume one experienced full-time engineer plus part-time product leadership, design or accessibility support, legal and privacy counsel, security review, mental-health or peer-support advice, and moderation operations. Specialist availability, API approvals, data licenses, infrastructure decisions, and issues discovered during staging may materially change timing.

This report is a product and engineering roadmap, not a legal opinion, clinical protocol, security certification, or compliance assessment. The confidential business-plan PDF was reviewed as product context but was not copied into the repository.

## Reviewed Materials

- Confidential **MySazz Background and Plan** PDF supplied by the project owner
- [Repository README](../README.md)
- [MySazz Security and Privacy Status](SECURITY.md)
- [MySazz Resource Navigator design](AI_RESOURCE_NAVIGATOR.md)
- [Deployment readiness](DEPLOYMENT_READY.md)
- [FindTreatment.gov API access request](https://findtreatment.gov/api-request-form)
- [HRSA Health Center data downloads](https://data.hrsa.gov/data/download?titleFilter=Health+Center)
- [211 National Data Platform](https://apiportal.211.org/)
- [988 Lifeline: What to Expect](https://988lifeline.org/get-help/what-to-expect/)
