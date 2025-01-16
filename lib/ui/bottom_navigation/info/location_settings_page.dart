import 'package:dtt/core/bloc/location_bloc/location_bloc.dart';
import 'package:dtt/core/injector/injector.dart';
import 'package:dtt/ui/others/primary_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LocationSettingsTile extends StatelessWidget {
  const LocationSettingsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Injector.instance<LocationBloc>()..add(const CheckLocationStatus()),
      child: BlocBuilder<LocationBloc, LocationState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state.isError) {
            return _buildStatusMessage(
              context,
              'Error occurred: ${state.errorMessage ?? 'Unknown error'}',
              Colors.red,
            );
          } else if (state.locationData != null) {
            return _buildStatusMessage(
              context,
              'Location is active and working.',
              Colors.green,
            );
          } else {
            return Center(
              child: ElevatedButton(
                onPressed: () {
                  context.read<LocationBloc>().add(const CheckLocationStatus());
                },
                child: const Text('Check again'),
              ),
            );
          }
        },
      ),
    );
  }

  Widget _buildStatusMessage(BuildContext context, String message, Color color) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            message,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const PrimarySpacing.gapMd(),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  context.read<LocationBloc>().add(const CheckLocationStatus());
                },
                child: Text(
                  'Check again',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  context.read<LocationBloc>().add(const OpenAppSettings());
                },
                child: Text(
                  'Open settings',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
