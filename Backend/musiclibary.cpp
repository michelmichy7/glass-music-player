#include "musiclibary.h"

#include <QDebug>



MusicLibary::MusicLibary(QObject *parent)
    : QObject{parent}
{

}

QStringList MusicLibary::musicFiles() {
    QStringList extensions;
    extensions << "*.ogg" << ".mp3";
}

void MusicLibary::playMusic()
{
    qDebug() << "k";
}

void MusicLibary::importLibary()
{
    qDebug() << "kl";
}
