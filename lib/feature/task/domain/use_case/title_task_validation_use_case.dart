class TitleTaskValidationUseCase {
  const TitleTaskValidationUseCase();

  bool call(String title) => title.isNotEmpty;
}
