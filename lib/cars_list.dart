import 'package:flutter/material.dart';
class CarsList extends StatelessWidget {
  const CarsList({Key? key, required this.id_car, required this.name_car, required this.photo_car, required this.compl, required this.cost_car}) : super(key: key);
  final int id_car;
  final String name_car;
  final String photo_car;
  final String compl;
  final double cost_car;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(16)
        )
      ),
      child: Column(
        children: <Widget>[
            Image.network('${photo_car}',
                fit: BoxFit.scaleDown,
            ),
            Center(
              child:Text('Название автомобиля: ${name_car}'
              ) ,
            ),
            Center(
              child: Text('Комплектация: ${compl}'
              ),
            ),
            Center(
              child:Text('Цена: ${cost_car} ₽') ,
            )

        ],
      ),

    );
  }
}
