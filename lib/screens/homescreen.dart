import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:scoreboard/repository/score_proider.dart';
import '../controller/scoreController.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final score = ref.watch(scoreStreamProvider);
    final controller = ref.read(scoreControllerProvider.notifier);
    final currentPath = GoRouter.of(context).state.path;
    final isEdit = currentPath == '/edit';
    return Scaffold(
      body: score.when(data: (scored){
            if (scored == null ) return Center(child: Text("No Data"),);
            final data = scored as Map<String, dynamic>;
            int teamA = data['teamA'];
            int teamB = data['teamB'];
            return LayoutBuilder(
              builder: (_, constraints) {
                double fontSize = (constraints.maxWidth * 0.12).clamp(60, 180);
                double containerWidth = (constraints.maxWidth * 0.7).clamp(350, 900);
                double containerHeight = (constraints.maxHeight * 0.5).clamp(350, 900);
                double imageSize = (constraints.maxWidth * 0.10).clamp(40, 150);

                return Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF2D3C70),
                            Color(0xFF23315B),
                            Color(0xFF1A2647),
                            // dark oxford blue
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                        height: containerHeight,
                        width: containerWidth,

                        decoration: BoxDecoration(
                          color: Color(0xFF14213D),
                          borderRadius: BorderRadius.circular(24),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x33000000),
                              blurRadius: 30,
                              offset: Offset(0, 12),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/images/TeamA.png',
                                    width: imageSize,
                                    height: imageSize,
                                    fit: BoxFit.contain,),
                                    Text (data["teamAName"], style: TextStyle(color: Colors.grey),),
                                    if(isEdit)
                                      Row(
                                        children: [
                                          IconButton(onPressed: (){controller.incrementA();}, icon: Icon(Icons.add, color: Colors.grey)),
                                          IconButton(onPressed: (){
                                            if(teamA > 0){
                                            controller.decrementA();
                                          }
                                        },
                                              icon: Icon(Icons.remove, color: Colors.grey)),
                                        ],
                                      )
                                  ],
                                ),
                              ),

                              Text(teamA.toString(), style: TextStyle(color: Colors.grey, fontSize:fontSize,),),
                              Icon(Icons.remove, size: 20, color: Colors.grey,),
                              Text(teamB.toString(), style: TextStyle(color: Colors.grey, fontSize: fontSize),),

                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/images/TeamB.png',
                                      width: imageSize,
                                      height: imageSize,
                                      fit: BoxFit.contain,),
                                    Text (data["teamBName"], style: TextStyle(color: Colors.grey),),
                                    if(isEdit)
                                      Row(
                                      children: [
                                        IconButton(onPressed: (){controller.incrementB();}, icon: Icon(Icons.add, color: Colors.grey)),
                                        IconButton(onPressed: (){
                                          if(teamB > 0){
                                            controller.decrementB();
                                          }
                                        }, icon: Icon(Icons.remove, color: Colors.grey)),
                                      ],
                                    )
                                  ],
                                ),
                              ),



                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }
            );
          },
            loading: () => Center(child: CircularProgressIndicator()),
            error: (e, _){
              print(e.toString());
              return Center(child: Text(e.toString()));
            }

          )

    );
  }
}

