// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.8.26;
pragma abicoder v2;

import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import { IPoolManager } from "v4-core/interfaces/IPoolManager.sol";
import { Currency, CurrencyLibrary } from "v4-core/types/Currency.sol";
import { FullMath } from "v4-core/libraries/FullMath.sol";
import { IMultiPositionManager } from "./interfaces/IMultiPositionManager.sol";
import { IClearing } from "./interfaces/IClearing.sol";
import { PoolManagerUtils } from "./PoolManagerUtils.sol";

/// @title UniProxy v2.0.0
/// @notice Proxy contract for hypervisor positions management
contract UniProxyV2 is ReentrancyGuard {

  uint256 constant BPS = 10_000;

	IClearing public clearance;
  address public owner;

  constructor(address _clearance, address _owner) {
    owner = _owner;
		clearance = IClearing(_clearance);	
  }

  /// @notice Deposit into the given position
  /// @param deposit0 Maximum amount of token0 to deposit
  /// @param deposit1 Maximum amount of token1 to deposit
  /// @param to Address to receive liquidity tokens
  /// @param pos Hypervisor Address
  /// @return shares Amount of liquidity tokens received
  function deposit(
      uint256 deposit0,
      uint256 deposit1,
      address to,
      address pos,
      uint256 maxSlippage
  ) nonReentrant external payable returns (  // Add payable modifier
    uint256 shares,
    uint256 actualDeposit0,
    uint256 actualDeposit1
  ) {
      require(to != address(0), "to should be non-zero");
      require(maxSlippage <= BPS, "slippage too high"); // Max 100%
      
      // Check native token deposits using Currency library
      if(address(IMultiPositionManager(pos).token0()) == address(0)) {
          require(msg.value == deposit0, "incorrect ETH amount for token0");
      } else {
          require(msg.value == 0, "ETH sent with token pair");
      }

      clearance.clearDeposit(to, pos);

      /// transfer assets from msg.sender and mint lp tokens to provided address 
      // Forward ETH value if needed
      (shares, actualDeposit0, actualDeposit1) = IMultiPositionManager(pos).deposit{value: msg.value}(
          deposit0,
          deposit1,
          to,
          msg.sender
      );
      // Check slippage for deposit0
      if (deposit0 > 0) {
        uint256 minDeposit0 = deposit0 * (BPS - maxSlippage) / BPS;
        uint256 maxDeposit0 = deposit0 * (BPS + maxSlippage) / BPS;
        require(actualDeposit0 >= minDeposit0, "deposit0 below max slippage");
        require(actualDeposit0 <= maxDeposit0, "deposit0 above max slippage");
      }

      // Check slippage for deposit1
      if (deposit1 > 0) {
        uint256 minDeposit1 = deposit1 * (BPS - maxSlippage) / BPS;
        uint256 maxDeposit1 = deposit1 * (BPS + maxSlippage) / BPS;
        require(actualDeposit1 >= minDeposit1, "deposit1 below max slippage");
        require(actualDeposit1 <= maxDeposit1, "deposit1 above max slippage");
      }

      // Refund any excess ETH
      uint256 leftoverETH = address(this).balance;
      if (leftoverETH > 0) {
        try this.transferETH{value: leftoverETH}(msg.sender) {} catch {
          payable(owner).transfer(leftoverETH);
        }
      }
  }

  function transferETH(address recipient) external payable {
    (bool success, ) = recipient.call{value: msg.value}("");
    require(success, "ETH transfer failed");
  }

  receive() external payable {}

  /// @notice Get the amount of token to deposit for the given amount of pair token
  /// @param pos Hypervisor Address
  /// @param token Address of token to deposit
  /// @param _deposit Amount of token to deposit
  /// @return amountStart Minimum amounts of the pair token to deposit
  /// @return amountEnd Maximum amounts of the pair token to deposit
  function getDepositAmount(
    address pos,
    address token,
    uint256 _deposit
  ) public view returns (uint256 amountStart, uint256 amountEnd) {
		return clearance.getDepositAmount(pos, token, _deposit);
	}

  function getOutMinForShares(
      address pos,
      uint256 shares,
      uint256 maxSlippage
  ) external view returns (uint256[2][] memory outMin) {
      require(maxSlippage <= 10000); // Max 100%

      uint256 basePositionsLength = IMultiPositionManager(pos).basePositionsLength();
      if (basePositionsLength == 0) {
          return outMin;
      } else {
        // Get current positions to determine outMin array size
        (IMultiPositionManager.Position[] memory positions, IMultiPositionManager.PositionData[] memory positionData) = 
            IMultiPositionManager(pos).getPositions();

        outMin = new uint256[2][](basePositionsLength);
        
        for(uint i = 0; i < basePositionsLength; i++) {
            // Calculate the liquidity proportion for this position
            uint256 liquidityToBurn = FullMath.mulDiv(positionData[i].liquidity, shares, IMultiPositionManager(pos).totalSupply());
            
            // Get the exact amounts for this liquidity
            IPoolManager poolManager = IMultiPositionManager(pos).poolManager();
            (uint256 amount0, uint256 amount1) = PoolManagerUtils.getAmountsForLiquidity(
                poolManager,
                positions[i],
                uint128(liquidityToBurn)
            );
            
            // Apply slippage tolerance using BPS
            outMin[i] = [
                amount0 * (10000 - maxSlippage) / 10000,
                amount1 * (10000 - maxSlippage) / 10000
            ];
        }
        return outMin;
      }
  }


	function transferClearance(address newClearance) external onlyOwner {
    require(newClearance != address(0), "newClearance should be non-zero");
		clearance = IClearing(newClearance);
	}

  function transferOwnership(address newOwner) external onlyOwner {
    require(newOwner != address(0), "newOwner should be non-zero");
    owner = newOwner;
  }

  modifier onlyOwner {
    require(msg.sender == owner, "only owner");
    _;
  }
}