#ifndef MUSICLIBARY_H
#define MUSICLIBARY_H

#include <QObject>

class MusicLibary : public QObject
{
    Q_OBJECT
public:
    explicit MusicLibary(QObject *parent = nullptr);
    QStringList musicFiles();

signals:
};

#endif // MUSICLIBARY_H
