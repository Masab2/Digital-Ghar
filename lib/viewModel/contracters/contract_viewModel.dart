import 'package:digital_ghar/view/user/Contractors/contractors_view.dart';
import 'package:flutter/foundation.dart';

class ContractorsUserViewModel extends ChangeNotifier {
  List<ContractorModel> _contractors = [];
  List<ContractorModel> _filteredContractors = [];
  String _selectedSpecialization = 'All';
  String _searchQuery = '';
  
  List<String> specializations = [
    'All',
    'Plumber',
    'Electrician',
    'Carpenter',
    'Painter',
    'Mason',
    'Interior Designer',
    'Architect',
  ];

  ContractorsUserViewModel() {
    _loadContractors();
  }

  List<ContractorModel> get filteredContractors => _filteredContractors;
  String get selectedSpecialization => _selectedSpecialization;

  void _loadContractors() {
    // Dummy data - replace with your actual data source
    _contractors = [
      ContractorModel(
        id: '1',
        name: 'John Smith',
        specialization: 'Plumber',
        location: 'New York City, NY',
        imageUrl: 'https://images.unsplash.com/photo-1560250097-0b93528c311a',
        contactNumber: '+1 234 567 8901',
        rating: 4.8,
        completedProjects: 56,
        isVerified: true,
      ),
      ContractorModel(
        id: '2',
        name: 'Emily Johnson',
        specialization: 'Electrician',
        location: 'Los Angeles, CA',
        imageUrl: 'https://images.unsplash.com/photo-1573496359142-b8d87734a5a2',
        contactNumber: '+1 345 678 9012',
        rating: 4.7,
        completedProjects: 42,
        isVerified: true,
      ),
      ContractorModel(
        id: '3',
        name: 'Michael Davis',
        specialization: 'Carpenter',
        location: 'Chicago, IL',
        imageUrl: 'https://images.unsplash.com/photo-1540569876033-6e5d046a1d77',
        contactNumber: '+1 456 789 0123',
        rating: 4.5,
        completedProjects: 38,
        isVerified: false,
      ),
      ContractorModel(
        id: '4',
        name: 'Sarah Wilson',
        specialization: 'Painter',
        location: 'Houston, TX',
        imageUrl: 'https://images.unsplash.com/photo-1551836022-d5d88e9218df',
        contactNumber: '+1 567 890 1234',
        rating: 4.9,
        completedProjects: 73,
        isVerified: true,
      ),
      ContractorModel(
        id: '5',
        name: 'James Rodriguez',
        specialization: 'Mason',
        location: 'Philadelphia, PA',
        imageUrl: 'https://images.unsplash.com/photo-1564564321837-a57b7070ac4f',
        contactNumber: '+1 678 901 2345',
        rating: 4.6,
        completedProjects: 31,
        isVerified: true,
      ),
      ContractorModel(
        id: '6',
        name: 'Jessica Lee',
        specialization: 'Interior Designer',
        location: 'Miami, FL',
        imageUrl: 'https://images.unsplash.com/photo-1494790108377-be9c29b29330',
        contactNumber: '+1 789 012 3456',
        rating: 4.9,
        completedProjects: 64,
        isVerified: true,
      ),
      ContractorModel(
        id: '7',
        name: 'David Miller',
        specialization: 'Architect',
        location: 'Seattle, WA',
        imageUrl: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d',
        contactNumber: '+1 890 123 4567',
        rating: 4.7,
        completedProjects: 48,
        isVerified: true,
      ),
      ContractorModel(
        id: '8',
        name: 'Olivia Brown',
        specialization: 'Plumber',
        location: 'Denver, CO',
        imageUrl: 'https://images.unsplash.com/photo-1554151228-14d9def656e4',
        contactNumber: '+1 901 234 5678',
        rating: 4.5,
        completedProjects: 35,
        isVerified: false,
      ),
    ];
    
    _filteredContractors = List.from(_contractors);
    notifyListeners();
  }

  void filterBySearch(String query) {
    _searchQuery = query.toLowerCase();
    _applyFilters();
  }

  void filterBySpecialization(String specialization) {
    _selectedSpecialization = specialization;
    _applyFilters();
  }

  void _applyFilters() {
    _filteredContractors = _contractors.where((contractor) {
      // Apply search filter
      final matchesSearch = contractor.name.toLowerCase().contains(_searchQuery) ||
          contractor.location.toLowerCase().contains(_searchQuery) ||
          contractor.specialization.toLowerCase().contains(_searchQuery);
      
      // Apply specialization filter
      final matchesSpecialization = _selectedSpecialization == 'All' || 
          contractor.specialization == _selectedSpecialization;
      
      return matchesSearch && matchesSpecialization;
    }).toList();
    
    notifyListeners();
  }
}