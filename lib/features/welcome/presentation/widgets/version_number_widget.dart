import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/package_info/package_info_cubit.dart';

class VersionNumberWidget extends StatelessWidget {
  const VersionNumberWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PackageInfoCubit, PackageInfoState>(
      builder: (context, state) {
        if (state is PackageInfoLoaded) {
          return Text(
            'V - ${state.info?.version ?? 0.0}',
            style: Theme.of(context).textTheme.bodySmall,
          );
        }

        return const SizedBox();
      },
    );
  }
}
