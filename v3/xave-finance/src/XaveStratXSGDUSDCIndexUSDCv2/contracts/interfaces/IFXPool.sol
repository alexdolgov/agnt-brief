// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.7.6;

interface IFXPool {
    function DOMAIN_SEPARATOR() external view returns (bytes32);

    function allowance(address owner, address spender)
        external
        view
        returns (uint256);

    function approve(address spender, uint256 amount) external returns (bool);

    function assimilator(address _derivative)
        external
        view
        returns (address assimilator_);

    function balanceOf(address account) external view returns (uint256);

    function collectorAddress() external view returns (address);

    function curve()
        external
        view
        returns (
            int128 alpha,
            int128 beta,
            int128 delta,
            int128 epsilon,
            int128 lambda,
            uint256 cap,
            uint256 totalSupply,
            address vault,
            bytes32 poolId
        );

    function decimals() external view returns (uint8);

    function decreaseAllowance(address spender, uint256 amount)
        external
        returns (bool);

    function derivatives(uint256) external view returns (address);

    function emergency() external view returns (bool);

    function getPoolId() external view returns (bytes32);

    function getVault() external view returns (address);

    function increaseAllowance(address spender, uint256 addedValue)
        external
        returns (bool);

    function initialize(address[] memory _assets, uint256[] memory _assetWeights) external;

    function liquidity()
        external
        view
        returns (uint256 total_, uint256[] memory individual_);

    function name() external view returns (string memory);

    function nonces(address owner) external view returns (uint256);

    function numeraires(uint256) external view returns (address);

    function onExitPool(
        bytes32 poolId,
        address sender,
        address,
        uint256[] memory,
        uint256,
        uint256,
        bytes memory userData 
    ) external returns (uint256[] memory amountsOut, uint256[] memory dueProtocolFeeAmounts);

    function onJoinPool(
        bytes32 poolId,
        address,
        address recipient,
        uint256[] memory,
        uint256,
        uint256,
        bytes memory userData
    ) external returns (uint256[] memory amountsIn, uint256[] memory dueProtocolFeeAmounts);

    function owner() external view returns (address);

    function paused() external view returns (bool);

    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external;

    function protocolPercentFee() external view returns (uint256);

    function renounceOwnership() external;

    function reserves(uint256) external view returns (address);

    function setCap(uint256 _cap) external;

    function setCollectorAddress(address _collectorAddress) external;

    function setEmergency(bool _emergency) external;

    function setParams(
        uint256 _alpha,
        uint256 _beta,
        uint256 _feeAtHalt,
        uint256 _epsilon,
        uint256 _lambda
    ) external;

    function setPaused() external;

    function setProtocolPercentFee(uint256 _protocolPercentFee) external;

    function symbol() external view returns (string memory);

    function totalSupply() external view returns (uint256);

    function totalUnclaimedFeesInNumeraire() external view returns (uint256);

    function transfer(address recipient, uint256 amount)
        external
        returns (bool);

    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) external returns (bool);

    function transferOwnership(address newOwner) external;

    function viewDeposit(uint256 totalDepositNumeraire)
        external
        view
        returns (uint256, uint256[] memory);

    function viewParameters()
        external
        view
        returns (
            uint256 alpha_,
            uint256 beta_,
            uint256 delta_,
            uint256 epsilon_,
            uint256 lambda_
        );

    function viewWithdraw(uint256 _curvesToBurn)
        external
        view
        returns (uint256[] memory);
}
