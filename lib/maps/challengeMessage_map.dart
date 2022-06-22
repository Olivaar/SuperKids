import 'package:superkids/enumerators/challenge_enumerator.dart';
import 'package:superkids/enumerators/optionChallenge_enumerator.dart';
import 'package:superkids/enumerators/year_enumerator.dart';

class ChallengeMessage {
  static String GetMessage(ChallengeEnumerator index, YearEnumerator year,
      OptionChallengeEnumerator optionChallenge) {
    if (optionChallenge == OptionChallengeEnumerator.home) {
      return GetMessageHome(index, year);
    } else {
      return GetMessagePark(index, year);
    }
  }

  static String GetMessageHome(ChallengeEnumerator index, YearEnumerator year) {
    Map<ChallengeEnumerator, String> message = Map();

    if (year == YearEnumerator.yearFourSix) {
      message[ChallengeEnumerator.challenge1] =
          "Pule 7 vezes para frente, trocando de perna e depois dê 50 passos  para frente.";
      message[ChallengeEnumerator.titleChallenge1] = "Desafio 1";

      message[ChallengeEnumerator.challenge2] =
          "De 5 super pulos para a direita o mais alto que você conseguir e  depois de 30 passos para esquerda.";
      message[ChallengeEnumerator.titleChallenge2] = "Desafio 2";

      message[ChallengeEnumerator.challenge3] =
          "Com um familiar/responsável dê 75 passos para frente, em seguida  dê 5 super pulos para direita.";
      message[ChallengeEnumerator.titleChallenge3] = "Desafio 3";
    }

    if (year == YearEnumerator.yearSevenNine) {
      message[ChallengeEnumerator.challenge1] =
          "Pule 15 vezes para frente com uma perna, trocando a perna e depois dê 75 passos para frente.";
      message[ChallengeEnumerator.titleChallenge1] = "Desafio 1";

      message[ChallengeEnumerator.challenge2] =
          "10 super pulos para a direita o mais alto que você consiga e depois ande 50 passos para a esquerda.";
      message[ChallengeEnumerator.titleChallenge2] = "Desafio 2";

      message[ChallengeEnumerator.challenge3] =
          "Com um familiar/responsável de 90 passos para frente, em seguida dê 7 super pulos para a direita.";
      message[ChallengeEnumerator.titleChallenge3] = "Desafio 3";
    }

    if (year == YearEnumerator.yearTenTwelve) {
      message[ChallengeEnumerator.challenge1] =
          "Pule 20 vezes para frente com uma perna, trocando a perna e depois dê 100 passos para frente.";
      message[ChallengeEnumerator.titleChallenge1] = "Desafio 1";

      message[ChallengeEnumerator.challenge2] =
          "Dê 15 super pulos para direita o mais alto que você conseguir e depois ande 125 passos à esquerda.";
      message[ChallengeEnumerator.titleChallenge2] = "Desafio 2";

      message[ChallengeEnumerator.challenge3] =
          "Com um familiar/responsável de 120 passos para frente, em seguida dê 10 super pulo para a direita.";
      message[ChallengeEnumerator.titleChallenge3] = "Desafio 3";
    }

    message[ChallengeEnumerator.buttonSubmitChallenge] = "Realizado";

    return message[index];
  }

  static String GetMessagePark(ChallengeEnumerator index, YearEnumerator year) {
    Map<ChallengeEnumerator, String> message = Map();

    if (year == YearEnumerator.yearFourSix) {
      message[ChallengeEnumerator.challenge1] =
          "Corra 2 minutos na grama e dê 2 super pulos para a esquerda.";
      message[ChallengeEnumerator.titleChallenge1] = "Desafio 1";

      message[ChallengeEnumerator.challenge2] =
          "Ande 300 passos para frente como o seu herói!";
      message[ChallengeEnumerator.titleChallenge2] = "Desafio 2";

      message[ChallengeEnumerator.challenge3] =
          "Com seu familiar/responsável brinque de correr por 2 minutos alterando de lugar com ele.";
      message[ChallengeEnumerator.titleChallenge3] = "Desafio 3";
    }

    if (year == YearEnumerator.yearSevenNine) {
      message[ChallengeEnumerator.challenge1] =
          "Corra 3 minutos na grama e dê 4 super pulos para a esquerda.";
      message[ChallengeEnumerator.titleChallenge1] = "Desafio 1";

      message[ChallengeEnumerator.challenge2] =
          "Ande 450 passos para frente como o seu herói!";
      message[ChallengeEnumerator.titleChallenge2] = "Desafio 2";

      message[ChallengeEnumerator.challenge3] =
          "Com seu familiar/responsável brinque de correr por 3 minutos alterando de lugar com ele.";
      message[ChallengeEnumerator.titleChallenge3] = "Desafio 3";
    }

    if (year == YearEnumerator.yearTenTwelve) {
      message[ChallengeEnumerator.challenge1] =
          "Corra 4 minutos na grama e dê 6 super pulos para a esquerda.";
      message[ChallengeEnumerator.titleChallenge1] = "Desafio 1";

      message[ChallengeEnumerator.challenge2] =
          "Ande 500 passos para frente como o seu herói!";
      message[ChallengeEnumerator.titleChallenge2] = "Desafio 2";

      message[ChallengeEnumerator.challenge3] =
          "Com seu familiar/responsável brinque de correr por 4 minutos alterando de lugar com ele.";
      message[ChallengeEnumerator.titleChallenge3] = "Desafio 3";
    }

    message[ChallengeEnumerator.buttonSubmitChallenge] = "Realizado";

    return message[index];
  }
}
