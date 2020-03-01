#include <QtTest>
#include <QCoreApplication>

// add necessary includes here

class ClientTest : public QObject
{
    Q_OBJECT

public:
    ClientTest();
    ~ClientTest();

private slots:
    void initTestCase();
    void cleanupTestCase();
    void test_case1();

};

ClientTest::ClientTest()
{

}

ClientTest::~ClientTest()
{

}

void ClientTest::initTestCase()
{

}

void ClientTest::cleanupTestCase()
{

}

void ClientTest::test_case1()
{

}

QTEST_MAIN(ClientTest)

#include "tst_clienttest.moc"
