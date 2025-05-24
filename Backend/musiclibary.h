#ifndef MUSICLIBARY_H
#define MUSICLIBARY_H

#include <QObject>

class MusicLibary : public QObject
{
    Q_OBJECT
public:
    explicit MusicLibary(QObject *parent = nullptr);
    QStringList musicFiles();
    Q_INVOKABLE void playMusic();
    Q_INVOKABLE void importLibary();

signals:
};

#endif // MUSICLIBARY_H
