Tyjah Banks

# Project 4 — Minutes 1: Sprint planning and architecture options

**Course:** CSCI4221  
**Product:** Student Task Tracker  
**Sprint:** 4  
**Date:** Monday, October 26, 2026  
**ScrumMaster:** Prof. Wanjun Hu (course instructor; participation not asserted)  
**Attendance:** Tyjah Banks — individual planning record; attendance/date require personal verification  
**Group listed by instructor:** 3

> **Record type:** Draft individual Scrum-style planning notes, dated as requested. This is not evidence of a held team meeting. The project's group-meeting requirement must be completed or cleared with the instructor.

## Purpose

Outline the system architecture for Student Task Tracker and establish Sprint 4's product backlog items (PBIs).

## Discussion topics and drafted notes

1. **What is architecture?** A high-level plan for how components, data, and deployment fit together.
2. **Three relevant templates:** Layered/three-tier, client–server, and microservices. The current app is small, so a layered client–server design is easier to understand than microservices.
3. **Cloud-based software:** The browser accesses an app running on internet-connected computing infrastructure; assignment records live in a server database rather than only one browser.
4. **Docker and a container:** Docker packages services as images and runs the images as isolated containers.
5. **Daemon and image:** `dockerd` manages containers, images, networks, and volumes. An image is the template from which a running container is created.
6. **Connection to earlier projects:** Project 3's three features remain the scope; server-side persistence is a proposed architecture change to meet the cloud requirement.

## Sprint 4 backlog — planning snapshot

| PBI | Status | Sprint | Estimate | Assigned | Reviewer |
| --- | --- | --- | --- | --- | --- |
| PBI-4.1 Compare architectures | Planned | 4 | 2 hours | Tyjah Banks | Self-review |
| PBI-4.2 Explain cloud containers, Docker, daemon, image | Planned | 4 | 2 hours | Tyjah Banks | Self-review |
| PBI-4.3 Define major components and sub-components | Planned | 4 | 3 hours | Tyjah Banks | Self-review |
| PBI-4.4 Design related database tables | Planned | 4 | 3 hours | Tyjah Banks | Self-review |
| PBI-4.5 Review architecture against user stories | Planned | 4 | 2 hours | Tyjah Banks | Self-review |
| PBI-4.6 Check attendance and submit on GitHub | Planned | 4 | 1 hour | Tyjah Banks | Instructor |

## Proposed component assignments

| Component | Owner for this submission | Database usage | Necessary planned files |
| --- | --- | --- | --- |
| Assignment Management API | Tyjah Banks | Reads/writes `assignments`; joins `courses` | `routes/assignments.js`, `services/assignmentService.js`, `db/connection.js` |
| Frontend and database infrastructure | Defined as part of overall system design; no other member's contribution asserted | Renders server records; database stores them | `frontend/js/app.js`, `frontend/js/api.js`, `database/schema.sql` |

## Proposed decisions and next steps

Select three-tier architecture with frontend, API, and relational database. Prepare a diagram, define contents of each container, and describe the `assignments` table before the next planning review. Verify the actual attendance and topics before treating this as historical meeting minutes.
