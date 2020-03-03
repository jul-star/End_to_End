#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <source/controllers/MasterController.h>
using namespace cm::controllers;

int main(int argc, char *argv[])
{
    MasterController mc;
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("masterController", &mc);
    const QUrl url(QStringLiteral("qrc:/views/MasterView.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl)
    {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    },
    Qt::QueuedConnection);


    engine.load(url);

    return app.exec();
}
