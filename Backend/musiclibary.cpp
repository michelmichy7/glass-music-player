#include "musiclibary.h"

MusicLibary::MusicLibary(QObject *parent)
    : QObject{parent}
{

}

QStringList MusicLibary::musicFiles() {
    QStringList extensions;
    extensions << "*.ogg" << ".mp3";
}
