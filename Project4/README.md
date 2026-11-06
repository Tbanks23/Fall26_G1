# Project 4: Architecture — Student Task Tracker

**Student:** Tyjah Banks  
**Course:** CSCI4221  
**Instructor / ScrumMaster:** Prof. Wanjun Hu  
**Group listed by instructor:** Group 3  
**Product:** Student Task Tracker  
**Sprint:** 4  
**Contribution documented here:** Tyjah Banks (individual architecture submission)

## Overview

Project 4 describes a **proposed cloud-based architecture** for the Student Task Tracker developed conceptually in Projects 1–3. The product allows students to add, edit, delete, sort, filter, and complete assignments. This sprint explains the components, Docker containers, API, persistent database, and supporting files necessary to build the application.

Projects 1–3 were requirements and prototype exercises, not a deployed application. Project 3 specified browser-local storage. The cloud requirement for Project 4 changes the proposed persistence strategy to a shared PostgreSQL database on the server; browser-local storage may be used only as a non-authoritative convenience cache in a future implementation.

## Required deliverables and grading checklist

| Requirement | Location | Points |
| --- | --- | ---: |
| Meeting minutes with PBI/sprint tables | [minutes_1.md](minutes_1.md), [minutes_2.md](minutes_2.md), [minutes_3.md](minutes_3.md) | 25 |
| Description of cloud containers, Docker, daemon and image | [architecture.md](architecture.md), Section 1 | 25 |
| Major components, sub-components, and necessary files | [architecture.md](architecture.md), Section 2 | 25 |
| Database use and related table structure | [architecture.md](architecture.md), Section 3; [schema.sql](schema.sql) | 25 |

## Files

- [architecture.md](architecture.md) — main architecture document, with all three required sections.
- [minutes_1.md](minutes_1.md) — October 26, 2026: sprint planning and architecture options.
- [minutes_2.md](minutes_2.md) — October 28, 2026: container and component design.
- [minutes_3.md](minutes_3.md) — October 30, 2026: design review and sprint wrap-up.
- [schema.sql](schema.sql) — proposed SQL schema for course and assignment data.

## Scope and honest status

This is an **architecture design submission**, not a claim that the cloud infrastructure has been deployed or an application built. The three minutes files are **drafted individual planning records with illustrative dates** for review and confirmation; they are not independent evidence that meetings occurred. Before submission, correct the attendance, discussion notes, and status entries to reflect actual work and meetings. The instructor's assignment expects real Scrum meetings, so individual planning records may not satisfy that requirement without instructor approval.

**Submission:** Add this entire `Project4/` directory to your personal repository, commit, push, check that the Markdown renders on GitHub, and submit the repository link in GeorgiaView.
