class DummyFollower {
  final int id;
  final String nickname;
  final String profileImageUrl;

  const DummyFollower({
    required this.id,
    required this.nickname,
    required this.profileImageUrl,
  });
}

final List<DummyFollower> dummyFollowers = [
  DummyFollower(
    id: 68,
    nickname: '장난꾸러기 김유정',
    profileImageUrl:
        'https://lh3.googleusercontent.com/a/ACg8ocI0XKinuBGzMLwdWASgzUFs4casjaywQV-bImNTXuCigif9nw=s96-c',
  ),
  DummyFollower(
    id: 67,
    nickname: '호기심 많은 김영하',
    profileImageUrl:
        'https://lh3.googleusercontent.com/a/ACg8ocL26hVqrGbh65KnLSm6-lOy8ZhQG5Xn_mlzumXMzP6ddcBHkQ=s96-c',
  ),
  DummyFollower(
    id: 64,
    nickname: '주은애플0718',
    profileImageUrl:
        'https://ssu-capstone1.s3.ap-northeast-2.amazonaws.com/images/member_profile/29cd21fd-3308-4d38-ad44-694a05715759_image_picker_4F95388A-B81A-49D4-8D51-7CD5C7DBE886-8858-000008EC1E35405D.jpg',
  ),
  DummyFollower(
    id: 66,
    nickname: '알쏭달',
    profileImageUrl: '',
  ),
];
