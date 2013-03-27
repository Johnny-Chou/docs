Clean work directory:
=====================

    git clean -fd
    git checkout .

Create a no history new branch:
===============================

    git checkout --orphan NEWBRANCH
    git rm -rf .

Only add tracked files:
=======================

    git add -u

Create a separate git dir:
==========================

    git init --separate-git-dir ../.repositories/Launcher2.git

Helped me a lot:
================

    git repack -adf

Add remote and push to remote:
==============================

    git remote add origin ~/repositories/workspace/MissedCallAndUnreadSms.git/
    git push -u origin master

Config git:
===========

    git config --global user.name "pageask"
    git config --global user.email pageask@gmail.com
    git config --global color.ui true
    git config --global core.editor emacs
    git config --global --unset core.editor