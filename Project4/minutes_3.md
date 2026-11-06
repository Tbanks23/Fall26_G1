Tyjah Banks

# Project 4 — Minutes 3: Sprint architecture review

**Course:** CSCI4221  
**Product:** Student Task Tracker  
**Sprint:** 4  
**Date:** Friday, October 30, 2026  
**ScrumMaster:** Prof. Wanjun Hu (course instructor; participation not asserted)  
**Attendance:** Tyjah Banks — individual final-review record; attendance/date require personal verification  
**Group listed by instructor:** 3

> **Record type:** Draft individual Scrum-style final review notes. The October 30 date is illustrative and no group meeting attendance is asserted.

## Purpose

Check that the proposed architecture document covers the cloud requirement, component descriptions, database table structure, and connection to Student Task Tracker's earlier user stories.

## Discussion topics and drafted notes

1. **Architecture choice:** Three-tier client–server design separates frontend, API, and data for clarity and maintainability.
2. **Docker definitions:** Images package the software; containers run the packages; the Docker daemon manages them. Docker Compose can connect services and the PostgreSQL volume.
3. **Major components and file responsibilities:** Dashboard and forms in the web container, validation and CRUD in the API container, course/assignment rows in the private data container.
4. **Database table:** `assignments` includes the ID, course foreign key, title, optional description, due date, boolean completion state, and timestamps. `courses` prevents repeated free-text course fields.
5. **Shared vs. local:** PostgreSQL becomes the authoritative server-side database; browser-local storage described in Project 3 is superseded by the cloud design.
6. **Risk:** The design must not be published as a real multi-user service without authentication and access restrictions. Backup, HTTPS, secret management, validation, and error handling also matter.
7. **Scope:** The artifacts describe architecture; no deployed cloud app or verified functional testing is represented.

## Sprint 4 backlog — design deliverable snapshot

| PBI | Status | Sprint | Estimate | Assigned | Reviewer |
| --- | --- | --- | --- | --- | --- |
| PBI-4.1 Compare architectures | Documented | 4 | 2 hours | Tyjah Banks | Self-review |
| PBI-4.2 Explain cloud containers, Docker, daemon, image | Documented | 4 | 2 hours | Tyjah Banks | Self-review |
| PBI-4.3 Define major components and sub-components | Documented | 4 | 3 hours | Tyjah Banks | Self-review |
| PBI-4.4 Design related database tables | Documented | 4 | 3 hours | Tyjah Banks | Self-review |
| PBI-4.5 Review architecture against user stories | Documented | 4 | 2 hours | Tyjah Banks | Self-review |
| PBI-4.6 Check attendance and submit on GitHub | Not verified | 4 | 1 hour | Tyjah Banks | Instructor |

## Design review of deliverables

| Deliverable | Description | Design status |
| --- | --- | --- |
| Container description | Cloud layout; Docker/daemon/image; three service containers; persistent data | Prepared |
| Components and necessary files | Four logical responsibilities and proposed source tree | Prepared |
| Database table structures | `assignments`, `courses`, column definitions, SQL schema, relationship diagram | Prepared |
| Minutes | Three dated individual draft records | Prepared; verify meeting facts |

## Sprint conclusion and remaining tasks

The architecture documentation is prepared for review. The remaining actions are to verify any real meeting details and attendance, check whether the instructor permits individual records in place of actual group Scrum meetings, commit and push the `Project4` folder, and submit the personal GitHub repository link. Do not describe the design as deployed or the minutes as verified historical meetings unless that is true.
