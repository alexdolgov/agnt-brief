// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.25;

import {ILiquidStrategy} from "contracts/interfaces/ILiquidStrategy.sol";

interface ILendingVault {
    /*//////////////////////////////////////////////////////////////
                                EVENTS
    //////////////////////////////////////////////////////////////*/

    event StrategyContractTransfered(address indexed newStrategy);

    event ProcessDepositRequest(address indexed controller, uint256 requestId, uint256 assets);
    event ProcessRedeemRequest(address indexed controller, uint256 requestId, uint256 shares);
    event CancelDepositRequest(address indexed controller, address indexed receiver, uint256 requestId, uint256 assets);
    event CancelRedeemRequest(address indexed controller, address indexed receiver, uint256 requestId, uint256 shares);

    event CreditStrategySet(address indexed creditStrategy);
    event LiquidStrategySet(address indexed liquidStrategy);

    event TokensRecovered(address indexed sender, address indexed receiver, address indexed token, uint256 amount);

    /*//////////////////////////////////////////////////////////////
                                FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    function mintFeeShares(address receiver, uint256 shares) external;

    function sharePrice() external view returns (uint256);

    function sharePricePlusUnclaimedInterest(uint256 interest) external view returns (uint256);

    function totalAssetsPlusUnclaimedInterest(uint256 interest) external view returns (uint256);

    function totalLiquidAssets() external view returns (uint256);

    function liquidStrategy() external view returns (ILiquidStrategy);

    function depositIntoStrategy(uint256 amount, uint256 strategyType) external;
    function withdrawFromStrategy(uint256 amount, uint256 strategyType) external;

    /*//////////////////////////////////////////////////////////////
                        ERRORS
    //////////////////////////////////////////////////////////////*/

    error InsufficientAvailableAssets();
    error ERC7540ExceededRedeemRequestAssets(address controller, uint256 assets, uint256 claimableAssets);
    error RequestOutsideLimits(address controller, uint256 assetsToWithdraw, uint256 minValue, uint256 maxValue);

    error OnlyPauser();
    error OnlyVaultManager();
    error OnlyOperator();
    error OnlyOwnerOrOperator();
    error OnlyCreditStrategy();
    error OnlyOperatorOrLiquidStrategy();
    error CreditStrategyAlreadySet();
    error OnlyDeployerFactory();
    error AddressNotWhitelisted();
    error OnlyNativeAsset();

    error CannotBeZeroAddress();
    error ArrayLengthsMustMatch();

    /*//////////////////////////////////////////////////////////////
                        ERC-4626 ERRORS
    //////////////////////////////////////////////////////////////*/

    /**
     * @dev Attempted to mint zero shares.
     */
    error ERC4626ZeroShares();

    /**
     * @dev Attempted to mint zero assets.
     */
    error ERC4626ZeroAssets();

    /**
     * @dev Attempted to deposit more assets than the pending deposit request for `receiver`.
     */
    error ERC7540ExceededDepositRequest(address receiver, uint256 assets, uint256 requestedDepositAssets);

    /**
     * @dev Attempted to redeem more assets than the pending redeem request for `receiver`.
     */
    error ERC7540ExceededRedeemRequest(address receiver, uint256 assets, uint256 requestedRedeemAssets);
}
