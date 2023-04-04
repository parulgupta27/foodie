import "package:flutter/material.dart";
import "package:foodei/main.dart";
import 'package:foodei/widgets/custom_page.dart';

class LoginBottomSheet extends StatefulWidget {
  final int index;
  const LoginBottomSheet({required this.index,super.key});

  @override
  State<LoginBottomSheet> createState() => _LoginBottomSheetState();
}

class _LoginBottomSheetState extends State<LoginBottomSheet>
    with SingleTickerProviderStateMixin {
  final _nameEmailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _createAccountEmailController = TextEditingController();
  late int _pageIndex = widget.index;
  bool _allDetailsFilled=false;

  late final TabController _tabController =
  TabController(length: 2, vsync: this, initialIndex: _pageIndex);

  void _makeControllerTextEmpty(){
    _nameEmailController.text='';
    _passwordController.text='';
  }

  @override
  void initState() {
    super.initState();
    _tabController.addListener(() {
      _makeControllerTextEmpty();
      setState(() {
        _allDetailsFilled=false;
        _pageIndex = _tabController.index;
      });
    });
  }
  void _disposeAllControllers(){
    _passwordController.dispose();
    _nameEmailController.dispose();
    _createAccountEmailController.dispose();
    _tabController.removeListener(() { });
    _tabController.dispose();
  }

  @override
  void dispose() {
    super.dispose();
    _disposeAllControllers();
  }

  @override
  Widget build(BuildContext context) {
    //todo when we are change the page the the next page text is showing very close to this page (fix that !!! )
    return Container(
      height: height * 0.7,
      padding: EdgeInsets.symmetric(horizontal: width * 0.07),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(height * .04),
              topRight: Radius.circular(height * .04))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: height * .03,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: height * 0.01,
              width: width * 0.15,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(height * 0.05)),
            ),
          ),
          SizedBox(height: height * 0.02),
          //todo TabBar is not align (make the tabbar same as design)
          Container(
            height: height * 0.05,
            width: width * 0.85,
            alignment: Alignment.topLeft,
            child: TabBar(
              controller: _tabController,
              tabs:const [
                Tab(text: 'Create Account'),
                Tab(
                  text: "Login",
                ),
              ],
              unselectedLabelColor: Colors.black,
              labelColor: Colors.green,
              indicatorSize: TabBarIndicatorSize.label,
            ),
          ),
          Container(
            // color: Colors.red,
            height: height * 0.57,
            child: TabBarView(
              controller: _tabController,
              children: [
                _buildPage(0),
                _buildPage(1)
              ],
            ),
          ),
        ],
      ),
    );
  }
  bool _isDetailsFilled() {
    return _passwordController.text.isNotEmpty &&
        _nameEmailController.text.isNotEmpty &&
        _pageIndex==1
        ? true
        : _createAccountEmailController.text.isNotEmpty;
  }
  void _onEditingComplete(){
    print('onEditingComplete method is calling');
    if(_isDetailsFilled()){
      print('all details are complete');
      setState(() {
        _allDetailsFilled=true;
      });
    }
  }

  Widget _buildPage(int index) {
    return SizedBox(
      height: height*0.55,
      child: CustomPage(
        index: index,
        allDetailsFilled: _allDetailsFilled,
        onEditingComplete: _onEditingComplete,
        nameEmailController: _nameEmailController,
        passwordController: _passwordController,
        createAccountEmailController: _pageIndex == 0
            ? _createAccountEmailController
            : null,
      ),
    );
  }
}
