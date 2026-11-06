Tyjah Banks

# Project 4 — Minutes 2: Component and database design review

**Course:** CSCI4221  
**Product:** Student Task Tracker  
**Sprint:** 4  
**Date:** Wednesday, October 28, 2026  
**ScrumMaster:** Prof. Wanjun Hu (course instructor; participation not asserted)  
**Attendance:** Tyjah Banks — individual progress-review record; attendance/date require personal verification  
**Group listed by instructor:** 3

> **Record type:** Draft individual Scrum-style progress notes. Not a verified record of a group meeting.

## Purpose

Review the proposed cloud architecture, determine what belongs in each container, and define the backend/database responsibilities for the assignment component.

## Discussion topics and drafted notes

1. **Major components:** Presentation layer (frontend), API/business layer, PostgreSQL data layer, and Docker infrastructure.
2. **Sub-components:** Dashboard, Add/Edit forms, filters, and API client; Express routes, validation, task service, database client; courses and assignments tables, constraints, and indexes.
3. **Container contents:** `tracker-web` includes Nginx and static frontend files; `tracker-api` includes Node.js, Express, routes and services; `tracker-db` includes PostgreSQL and a persistent data volume.
4. **Where the database lives:** Server-side PostgreSQL shared by the application, accessible only by the API on a private network. For real public multi-user use, authentication must be added.
5. **My focus component:** Assignment Management API reads and writes `assignments`, with a foreign key to `courses`.
6. **Necessary files:** Frontend HTML/CSS/JS, API route/service/connection modules, container Dockerfiles, `compose.yaml`, and `schema.sql`.
7. **Feature continuity:** Required title/course/due date; reversible completion; sorting by due date; filters by course and status.

## Sprint 4 backlog — illustrative progress snapshot

| PBI | Status | Sprint | Estimate | Assigned | Reviewer |
| --- | --- | --- | --- | --- | --- |
| PBI-4.1 Compare architectures | Design drafted | 4 | 2 hours | Tyjah Banks | Self-review |
| PBI-4.2 Explain cloud containers, Docker, daemon, image | Design drafted | 4 | 2 hours | Tyjah Banks | Self-review |
| PBI-4.3 Define major components and sub-components | In draft | 4 | 3 hours | Tyjah Banks | Self-review |
| PBI-4.4 Design related database tables | In draft | 4 | 3 hours | Tyjah Banks | Self-review |
| PBI-4.5 Review architecture against user stories | Planned | 4 | 2 hours | Tyjah Banks | Self-review |
| PBI-4.6 Check attendance and submit on GitHub | Planned | 4 | 1 hour | Tyjah Banks | Instructor |

## Proposed component and table review

| Component owned by Tyjah Banks | Table / usage | Planned deliverable |
| --- | --- | --- |
| Assignment Management API | CRUD operations for `assignments`, join to `courses` | Endpoint list, validation rules, source-file plan |
| Database design contribution | Define `assignment_id`, `course_id`, `title`, `description`, `due_date`, `is_complete`, timestamps | Column table and `schema.sql` |

## Proposed decisions and next steps

Keep the database private; retain records with a persistent volume; use parameterized SQL queries; do not treat localStorage as the source of truth in the cloud architecture. Complete the ER relationship, document constraints and security risks, and perform the final document review. Confirm all meeting claims before submission.
