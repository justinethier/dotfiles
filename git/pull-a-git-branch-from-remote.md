Pull A Git Branch from Remote
From http://www.wetware.co.nz/2009/07/pull-a-git-branch-from-remote/

DON'T DO THIS

    # git checkout -b < new_branch >
    # git pull origin < new_branch >

Instead do:

    git checkout -b < new_branch > origin/< new_branch >

So a real world example would be:

    git checkout -b newdesign origin/newdesign

----------------------------------------------------

