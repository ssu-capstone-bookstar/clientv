import 'package:book/modules/chat/repository/chat_repository.dart';
import 'package:book/modules/chat/state/chat_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'chat_view_model.g.dart';

@riverpod
class ChatViewModel extends _$ChatViewModel {
  late final ChatRepository _repository;

  @override
  FutureOr<ChatState> build() async {
    _repository = ref.watch(chatRepositoryProvider);

    final response = await _repository.getMyChatRooms();

    state = AsyncValue.data(
      ChatState(
        myChatRooms: response.data,
      ),
    );
    return state.value ?? ChatState();
  }

  // Future<void> searchBooks(String query) async {
  //   if (state is AsyncLoading) {
  //     return;
  //   }

  //   if (query.isEmpty) {
  //     state = const AsyncValue.data(SearchState());
  //     return;
  //   }

  //   state = const AsyncValue.loading();

  //   try {
  //     final response = await _repository.searchBooks(query);
  //     state = AsyncValue.data(
  //       SearchState(
  //         books: response.data.data,
  //         hasNext: response.data.hasNext,
  //         query: query,
  //         start: 2,
  //       ),
  //     );
  //   } catch (e, stackTrace) {
  //     state = AsyncValue.error(e, stackTrace);
  //   }
  // }
}
