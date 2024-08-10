#include <QtWidgets/QApplication>
#include <QtCore/QDirIterator>
#include <QtCore/QDebug>

int main (int argc, char* argv[]) {

    //
    // Create the app.
    //
    QApplication app(argc, argv);

    //
    // Iterate and list all known resources.
    //
    QDirIterator it(":", QDirIterator::Subdirectories);
    while (it.hasNext()) {
        qDebug() << it.next();
    }

    return 1;
}

