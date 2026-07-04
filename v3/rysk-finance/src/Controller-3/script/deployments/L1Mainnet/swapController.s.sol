// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.10;

import {Script} from 'forge-std/Script.sol';
import {StdCheats} from 'forge-std/StdCheats.sol';

import {AddressBook} from 'contracts/core/AddressBook.sol';
import {OtokenFactory} from 'contracts/core/OtokenFactory.sol';
import {Otoken} from 'contracts/core/Otoken.sol';
import {Whitelist} from 'contracts/core/Whitelist.sol';
import {Oracle} from 'contracts/core/Oracle.sol';
import {MarginPool} from 'contracts/core/MarginPool.sol';
import {MarginCalculator} from 'contracts/core/MarginCalculator.sol';
import {MarginVault} from 'contracts/libs/MarginVault.sol';
import {Controller} from 'contracts/core/Controller.sol';
import 'forge-std/console.sol';

contract DeployNewController is Script, StdCheats {

  address deployer;

  AddressBook internal addressBook;
  Controller internal newControllerImpl;

  function run() public virtual {
    uint256 deployerPrivateKey = vm.envUint('MAINNET_DEPLOYER_PRIVATE_KEY') ;
    addressBook = AddressBook(0xf56069D6A77714d8129fC22112f8aDAF4752dF58);

    vm.startBroadcast(deployerPrivateKey);
    deployer = vm.addr(deployerPrivateKey);

    newControllerImpl = new Controller();
    addressBook.setController(address(newControllerImpl));
    newControllerImpl.initialize(address(addressBook), deployer, deployer); // set manager to owner for now
    newControllerImpl.refreshConfiguration();

    console.log('new controller impl address: ', address(newControllerImpl));
    console.log('address book: ', address(addressBook));

  }
}