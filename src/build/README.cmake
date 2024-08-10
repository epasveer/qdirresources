Notes for building qdirresources with cmake.

    % cd qdirresources/src/build
    % cmake -DCMAKE_BUILD_TYPE=Debug ..     # Debug release -g.
    % cmake -DCMAKE_BUILD_TYPE=Release ..   # Optimized release -O.
    % cmake -DCMAKE_CXX_FLAGS=-Wall ..      # With all compile warnings turned on.

The above defaults to Qt6. If you want to use Qt5, add the '-DQTVERSION' flag.

    % cmake -DQTVERSION=QT5 -DCMAKE_BUILD_TYPE=Debug ..

Once cmake is run, then just build qdirresources.

    % make clean                            # Clean files.
    % make qdirresources                    # Build qdirresources.
    % sudo make install                     # Install it.

Another way to ask cmake to do the build for you.

    % cmake --build . --config Release
    % sudo cmake --install .

MacOS may need help finding the cmake config file for Qt6.

    % cmake -DCMAKE_PREFIX_PATH=/usr/local/opt/qt6/ -DCMAKE_BUILD_TYPE=Release ..

