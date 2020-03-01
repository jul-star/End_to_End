#pragma once

#include <QObject>
#include <source/cm-lib_global.h>
#include <QString>

namespace cm::controllers {
class CMLIB_EXPORT MasterController : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString ui_WelcomeMessage MEMBER WelcomeMessage CONSTANT)
public:
    explicit MasterController(QObject *parent = nullptr);

signals:
public:
    QString const WelcomeMessage{"This is MasterController to Major Jul"};

};


}
