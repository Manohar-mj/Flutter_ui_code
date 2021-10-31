import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main(List<String> args) => runApp(MaterialApp(
      home: HomeIn(),
    ));

class HomeIn extends StatefulWidget {
  HomeIn({Key? key}) : super(key: key);

  @override
  _HomeInState createState() => _HomeInState();
}

class _HomeInState extends State<HomeIn> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
                      key: _bottomNavigationKey,
                      index: 0,
                      height: 60.0,
                      items: <Widget>[
                        Icon(Icons.list, size: 30),
                        Icon(Icons.favorite, size: 30),
                        Icon(Icons.call_split, size: 30),
                        Icon(Icons. payment, size: 30),
                        Icon(Icons.perm_identity, size: 30),
                      ],
                      color: Colors.brown,
                      buttonBackgroundColor: Colors.white,
                      backgroundColor: Colors.transparent,
                      animationCurve: Curves.easeInOut,
                      animationDuration: Duration(milliseconds: 600),
                      onTap: (index) {
                        setState(() {
                          _page = index;
                        });
                      },
                      letIndexChange: (index) => true,
                    ),
      backgroundColor: Colors.black,
      // appBar: AppBar(),
      body: Stack(children: [
        CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: [
            SliverAppBar(
              snap: false,
              pinned: true,
              floating: true,
              shape: RoundedRectangleBorder(
                
                  borderRadius: BorderRadius.circular(20)),

              expandedHeight: 200.0,
              backgroundColor: Colors.brown,
              flexibleSpace: const FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                //titlePadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                title: Text('Coffee Cafe',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.bold)),
              ),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.more_vert, color: Colors.black),
                  onPressed: () {},
                ),
                SizedBox(
                  width: 210,
                ),
                IconButton(
                  icon: const Icon(Icons.search, color: Colors.black),
                  onPressed: () {},
                ),
                SizedBox(
                  width: 30,
                ),
                IconButton(
                  icon: const Icon(Icons.add_circle, color: Colors.black),
                  onPressed: () {},
                ),
              ],
            ),
            // Figma Flutter Generator Rectangle13Widget - RECTANGLE
            SliverList(
              delegate: SliverChildListDelegate([
                Padding(padding: EdgeInsets.all(20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 230,
                          height: 300,
                          decoration: BoxDecoration(
                            
                            borderRadius: BorderRadius.circular(30),
                          
                            image: DecorationImage(image: AssetImage('assets/images/co.jpg',),
                            fit: BoxFit.fitWidth)
                          ),
                          child: Transform.translate(
                            
                              offset: Offset(60, -110),
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 80, vertical: 120),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.brown),
                                  
                                child: Icon(
                                  Icons.bookmark_border,
                                  size: 30,
                                ),
                              )  
                          ), 
                        ),
                      ],                      
                    ),
                    Column(
                      children: [
                        Text('Cappuccino',style: TextStyle(color: Colors.white,fontSize: 22),),
                        SizedBox(width: 10,height: 10,),
                        Text('with Chocolate',style: TextStyle(color: Colors.white54,fontSize: 16),),
                        SizedBox(height: 40,),
                        
                        Text('2.4K Rated',style: TextStyle(color: Colors.white54,fontSize: 16),),
                        SizedBox(height: 15,),
                        
                        Row(
                          children: [
                            
                            Image(
                              image: AssetImage(
                                'assets/images/Starfilled.png',
                              ),
                              width: 22,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Image(
                              image: AssetImage(
                                'assets/images/Starfilled.png',
                              ),
                              width: 22,
                            ),
                            Image(
                              image: AssetImage(
                                'assets/images/Starfilled.png',
                              ),
                              width: 22,
                            ),
                            Image(
                              image: AssetImage(
                                'assets/images/Starfilled.png',
                              ),
                              width: 22,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Image(
                              image: AssetImage(
                                'assets/images/Starfilled.png',
                              ),
                              width: 22,
                            ),
                          ],

                        ),
                        SizedBox(height: 30,),
                        
                        Text('Price',style: TextStyle(color: Colors.yellow,fontSize: 30),),
                        Text('Rs.299',style: TextStyle(color: Colors.white,fontSize: 30),),
                        Row(
                          children: [
                            FlatButton.icon(onPressed: () {}, icon: Icon(Icons.add_shopping_cart,color: Colors.white,), label: Text('card',style: TextStyle(color: Colors.white70),))
                          ],
                        ),
                      ],
                    )
                  ],
                ),),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Text(
                        'Today Special for You',
                        style: TextStyle(color: Colors.white54,fontSize: 20),
                      ),
                    ),  
                  ],
                
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Container(
                      width: 200,
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image:AssetImage('assets/images/cold.jpg') ,fit: BoxFit.cover)
                      ),
                      child: Transform.translate(
                          offset: Offset(50, -120),
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 300),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.brown[50]),
                            child: Icon(
                              Icons.bookmark_border,color: Colors.white,
                              size: 30,
                            ),
                          )), 
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Text(' Cold Coffee',style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.bold),),
                          Text('with ice creame ',style: TextStyle(color: Colors.white54,fontSize: 16),),
                          FlatButton.icon(onPressed: () {}, icon: Icon(Icons.star,color: Colors.yellow,),color: Colors.brown , label: Text('rated by 5k+',style: TextStyle(color: Colors.white),))
                        ],

                      ),
                    )
                  ],

                ),
                SizedBox(height: 50,),
                Row(
                  children: [
                    Container(
                      width: 200,
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image:AssetImage('assets/images/inco.jpg'),
                          
                          fit: BoxFit.cover)
                      ),
                      child: Transform.translate(
                          offset: Offset(50, -120),
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 300),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.brown[50]),
                            child: Icon(
                              Icons.bookmark_border,color: Colors.white,
                              size: 30,
                            ),
                          )), 
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Text(
                            ' Black Coffee',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'with ice creame',
                            style:
                                TextStyle(color: Colors.white54, fontSize: 16),
                          ),
                          FlatButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              color: Colors.brown,
                              label: Text(
                                'rated by 1k+',
                                style: TextStyle(color: Colors.white),
                              ))
                        ],
                      ),
                    )
                  ],

                ),
                SizedBox(height: 50,),
                Row(
                  children: [
                    Container(
                      width: 200,
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image:AssetImage('assets/images/loo.jpg'),fit: BoxFit.cover )
                      ),
                      child: Transform.translate(
                          offset: Offset(50, -120),
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 300),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.brown[50]),
                            child: Icon(
                              Icons.bookmark_border,color: Colors.white,
                              size: 30,
                            ),
                          )), 
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Text(' Cold Coffee',style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.bold),),
                          Text('with Orea Chocolate',style: TextStyle(color: Colors.white54,fontSize: 16),),
                          FlatButton.icon(onPressed: () {}, icon: Icon(Icons.star,color: Colors.yellow,),color: Colors.brown , label: Text('rated by 2k+',style: TextStyle(color: Colors.white),))
                        ],

                      ),
                    )
                  ],

                ),
                Container(
                  color: Colors.transparent,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(_page.toString(), textScaleFactor: 10.0),
                        ElevatedButton(
                          child: Text('Go To Page of index 1'),
                          onPressed: () {
                            final CurvedNavigationBarState? navBarState =
                                _bottomNavigationKey.currentState;
                            navBarState?.setPage(1);
                          },
                        )
                      ],
                    ),
                  ),
                )
         
              ]),
            ),
            

          ],
        ),
      ]),


    );
  }
}
