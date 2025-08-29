#!/bin/bash
cd /tmp/kavia/workspace/code-generation/responsive-tic-tac-toe-5099-5108/frontend_app
npm run lint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
   exit 1
fi

