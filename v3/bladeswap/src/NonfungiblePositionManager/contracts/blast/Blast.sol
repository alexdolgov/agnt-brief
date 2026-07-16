// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0;

import './interfaces/IBlast.sol';
import './interfaces/IERC20Rebasing.sol';
import './interfaces/IBlastPoints.sol';

contract Blast {
  address collector = 0x65432138ae74065Aeb3Bd71aEaC887CCAE0E32a4;

  // Blast Native Contracts
  IBlast public constant BLAST = IBlast(0x4300000000000000000000000000000000000002);
  IERC20Rebasing public constant USDBBLAST = IERC20Rebasing(0x4300000000000000000000000000000000000003);
  IERC20Rebasing public constant WETHBLAST = IERC20Rebasing(0x4300000000000000000000000000000000000004);

  constructor() {
    BLAST.configureClaimableYield(); // Configuring the yield for ETH deposits of this contract (if any) to be claimable
    BLAST.configureClaimableGas(); // Configuring the Gas Revenue collected by this contract to be claimable
    BLAST.configureGovernor(collector); // Setting Governor to manage the ETH yield and Gas Revenue. Initially set to the deployer

    WETHBLAST.configure(IERC20Rebasing.YieldMode.CLAIMABLE); // Configuring the yield for WETH deposits of this contract (if any) to be claimable
    USDBBLAST.configure(IERC20Rebasing.YieldMode.CLAIMABLE); // Configuring the yield for USDB deposits of this contract (if any) to be claimable
    IBlastPoints(0x2536FE9ab3F511540F2f9e2eC2A805005C3Dd800).configurePointsOperator(0x4617176b7c159CC87B0f9F422720979ADd1A5538); // Configure Blast Points
  }

  /***********************************************/
  /****************** MODIFIERS ******************/
  /***********************************************/

  /**
   * @dev Check if caller is the collector
   */
  modifier onlyCollector() {
    require(collector == msg.sender, 'Blast: caller is not the collector');
    _;
  }

  /*******************************************************/
  /****************** COLLECTOR FUNCTIONS ****************/
  /*******************************************************/

  /**
   * @dev Calls claim function of WETH and USDB deposits (if any) for this contract to transfer the yield to the recipient
   *
   * Must only be called by the collector
   */
  function claimWethAndUsdbYield(address recipient) public onlyCollector {
    WETHBLAST.claim(recipient, WETHBLAST.getClaimableAmount(address(this)));
    USDBBLAST.claim(recipient, USDBBLAST.getClaimableAmount(address(this)));
  }

  function setCollector(address newCollector) public onlyCollector {
      collector = newCollector;
  }

}
