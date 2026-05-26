// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {IERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import {IStarToken} from "./IStarToken.sol";

interface IAMOVault {
    // Events
    event STARMinted(uint256 starAmount, address minter, address recipient);
    event STARRedeemed(uint256 starAmount, address burner, address recipient);
    event STARContractDebtChanged(uint256 newstarContractDebt);
    event NewStrategistAddrSet(address newStrategistAddr);
    event NewFeeRecipientSet(address newFeeRecipient);
    event RedeemPauseToggle(bool paused);
    event NewDebtLimitSet(uint256 newDebtLimit);
    event NewFeeSet(uint256 newFee);
    event NewStrategySet(address newStrategy);
    event VaultBufferUpdated(uint256 newBuffer);
    event AssetAllocated(
        address indexed asset,
        address indexed strategy,
        uint256 amount
    );

    // View functions
    function star() external view returns (IStarToken);
    function starContractDebt() external view returns (uint256);
    function strategy() external view returns (address);
    function strategistAddr() external view returns (address);
    function stable() external view returns (IERC20Upgradeable);
    function totalValue() external view returns (uint256);
    function totalDebt() external view returns (uint256);
    function feeRecipient() external view returns (address);
    function starDebtLimit() external view returns (uint256);
    function redeemPaused() external view returns (bool);
    function swapFee() external view returns (uint256);

    // External functions
    function initialize(
        address _star,
        address _strategy,
        address _stable,
        uint256 _swapFee,
        address _feeRecipient
    ) external;

    function mintSTAR(
        uint256 _stableAmount,
        address _recipient
    ) external returns (uint256 starAmount);

    function redeemSTAR(
        uint256 _starAmount,
        address _recipient
    ) external returns (uint256 stableAmount);

    function burnForStrategy(uint256 _amount) external;
    function mintForStrategy(uint256 _amount) external;
    function strategyDeposit(uint256 _amount) external;
    function setStrategistAddr(address _newStrategistAddr) external;
    function setFeeRecipient(address _newFeeRecipient) external;
    function toggleRedeemPaused(bool _paused) external;
    function setDebtLimit(uint256 _newDebtLimit) external;
    function setFee(uint256 _newSwapFee) external;
    function setStrategy(address _strategy) external;
    function withdrawDeposit(uint256 _amount) external;
    function setVaultBuffer(uint256 _vaultBuffer) external;
    function allocate() external;
}
