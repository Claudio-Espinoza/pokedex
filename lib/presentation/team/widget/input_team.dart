import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pokedex_demo/common/helper/util.dart';
import 'package:pokedex_demo/core/configs/themes/app_layer.dart';
import 'package:pokedex_demo/core/configs/themes/app_themes.dart';
import 'package:pokedex_demo/domain/service/team_service.dart';
import 'package:pokedex_demo/presentation/pokedex/page/pokedex.dart';
import 'package:pokedex_demo/presentation/team/page/team.dart';
import 'package:pokedex_demo/domain/model/team.dart';

import '../../../core/configs/themes/app_colors.dart';

class InputTeam extends HookWidget {
  const InputTeam({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final teamNameController = useTextEditingController();
    final teamDescriptionController = useTextEditingController();
    final TeamService service = TeamService();

    // Hook to detect changes in team name
    useValueChanged<String?, void>(teamNameController.text, (_, __) {
      formKey.currentState?.validate();
    });

    // Hook to detect changes in team description
    useValueChanged<String?, void>(teamDescriptionController.text, (_, __) {
      formKey.currentState?.validate();
    });

    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: AppLayer.marginHorizontal,
            vertical: AppLayer.marginVertical),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(
                top: AppLayer.marginInternal - 10,
                bottom: AppLayer.paddingButton),
            child: Column(
              children: [
                TextFormField(
                  key: const Key('teamName'),
                  controller: teamNameController,
                  decoration: AppThemes.inputGenericTheme(
                      hintText: 'Nombre del equipo'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'El nombre del equipo no puede estar vacío';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                TextFormField(
                  key: const Key('descriptionTeam'),
                  controller: teamDescriptionController,
                  decoration: AppThemes.inputGenericTheme(
                      hintText: 'Descripción del equipo'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'La descripción del equipo no puede estar vacía';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
              ],
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            ElevatedButton(
              onPressed: () {
                Util.redirectToPage(context, const TeamPage());
              },
              style: AppThemes.customButtonStyle(
                  backgroundColor: AppColors.red, size: 120),
              child: const SizedBox(
                width: double.infinity,
                height: double.maxFinite,
                child: Center(
                  child: Text(
                    'Cancelar',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: AppColors.fontContrast,
                      fontFamily: 'LeagueSpartan',
                    ),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (formKey.currentState?.validate() ?? true) {
                  Team team = Team(
                    nameTeam: teamNameController.text,
                    descriptionTeam: teamDescriptionController.text,
                  );
                  service.saveTeam(team);
                  Util.redirectToPage(context, const Pokedex());
                }
              },
              style: AppThemes.customButtonStyle(
                  backgroundColor: AppColors.green, size: 180),
              child: const SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Center(
                  child: Text(
                    'Buscar pokemon',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: AppColors.fontContrast,
                      fontFamily: 'LeagueSpartan',
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ]),
      ),
    );
  }
}
