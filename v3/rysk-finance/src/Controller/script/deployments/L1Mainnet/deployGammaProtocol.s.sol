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
import {ControllerLogic} from 'contracts/core/ControllerLogic.sol';
import {IERC20} from 'contracts/packages/oz/IERC20.sol';
import 'forge-std/console.sol';

contract GammaDeploymentScript is Script, StdCheats {
  address deployer;

  AddressBook internal addressBook;
  OtokenFactory internal otokenFactory;
  Otoken internal otokenImpl;
  Whitelist internal whitelist;
  Oracle internal oracle;
  MarginPool internal marginPool;
  MarginCalculator internal marginCalculator;
  Controller internal controller;
  ControllerLogic internal controllerLogic;

  function run() public virtual {
    address ownerMultisig = 0xAFE32eB89391DFd5900F98857f009477e4423Db4;

    uint256 deployerPrivateKey = vm.envUint('MAINNET_DEPLOYER_PRIVATE_KEY');

    vm.startBroadcast(deployerPrivateKey);
    deployer = vm.addr(deployerPrivateKey);

    IERC20 usdc = IERC20(0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48);
    IERC20 usdt = IERC20(0xdAC17F958D2ee523a2206206994597C13D831ec7);

    // deploy contracts, initialize, and hook up to address book

    addressBook = new AddressBook();

    otokenFactory = new OtokenFactory(address(addressBook));
    addressBook.setOtokenFactory(address(otokenFactory));
    otokenFactory.endMigration();

    otokenImpl = new Otoken();
    addressBook.setOtokenImpl(address(otokenImpl));

    whitelist = new Whitelist(address(addressBook));
    addressBook.setWhitelist(address(whitelist));

    oracle = new Oracle();
    addressBook.setOracle(address(oracle));

    MarginPool marginPoolImpl = new MarginPool();
    addressBook.setMarginPool(address(marginPoolImpl));
    marginPoolImpl.initialize(address(addressBook), deployer);
    marginPool = MarginPool(addressBook.getMarginPool());

    marginCalculator = new MarginCalculator(address(oracle), address(addressBook));
    addressBook.setMarginCalculator(address(marginCalculator));

    ControllerLogic controllerLogicImpl = new ControllerLogic();
    addressBook.setControllerLogic(address(controllerLogicImpl));
    controllerLogicImpl.initialize(address(addressBook), deployer);
    controllerLogic = ControllerLogic(addressBook.getControllerLogic());

    Controller controllerImpl = new Controller();
    addressBook.setController(address(controllerImpl));
    controllerImpl.initialize(address(addressBook), deployer, deployer);
    controller = Controller(addressBook.getController());
    controllerImpl.refreshConfiguration();
    controller.refreshConfiguration();
    controllerLogic.refreshConfiguration();


    // set initial state
    oracle.setStablePrice(address(usdc), 1e8);
    oracle.setStablePrice(address(usdt), 1e8);
    controller.setFullPauser(ownerMultisig);
    controller.setPartialPauser(ownerMultisig);
    oracle.setDisputer(ownerMultisig);


    vm.stopBroadcast();
    console.log('USDC:', address(usdc));
    console.log('Address book:', address(addressBook));
    console.log('oToken Factory:', address(otokenFactory));
    console.log('oToken Impl:', address(otokenImpl));
    console.log('Oracle:', address(oracle));
    console.log('Margin pool:', address(marginPool));
    console.log('Margin pool Impl:', address(marginPoolImpl));
    console.log('Margin Calculator:', address(marginCalculator));
    console.log('Controller:', address(controller));
    console.log('Controller Impl:', address(controllerImpl));
    console.log('Controller Logic:', address(controllerLogic));
    console.log('Controller Logic Impl:', address(controllerLogicImpl));
    console.log('Whitelist:', address(whitelist));
  }
}
