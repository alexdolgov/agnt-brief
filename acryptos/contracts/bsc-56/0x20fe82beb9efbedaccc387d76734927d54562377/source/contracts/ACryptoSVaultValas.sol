//          .8.              ,o888888o.    8 888888888o.   `8.`8888.      ,8' 8 888888888o   8888888 8888888888     ,o888888o.        d888888o.
//         .888.            8888     `88.  8 8888    `88.   `8.`8888.    ,8'  8 8888    `88.       8 8888        . 8888     `88.    .`8888:' `88.
//        :88888.        ,8 8888       `8. 8 8888     `88    `8.`8888.  ,8'   8 8888     `88       8 8888       ,8 8888       `8b   8.`8888.   Y8
//       . `88888.       88 8888           8 8888     ,88     `8.`8888.,8'    8 8888     ,88       8 8888       88 8888        `8b  `8.`8888.
//      .8. `88888.      88 8888           8 8888.   ,88'      `8.`88888'     8 8888.   ,88'       8 8888       88 8888         88   `8.`8888.
//     .8`8. `88888.     88 8888           8 888888888P'        `8. 8888      8 888888888P'        8 8888       88 8888         88    `8.`8888.
//    .8' `8. `88888.    88 8888           8 8888`8b             `8 8888      8 8888               8 8888       88 8888        ,8P     `8.`8888.
//   .8'   `8. `88888.   `8 8888       .8' 8 8888 `8b.            8 8888      8 8888               8 8888       `8 8888       ,8P  8b   `8.`8888.
//  .888888888. `88888.     8888     ,88'  8 8888   `8b.          8 8888      8 8888               8 8888        ` 8888     ,88'   `8b.  ;8.`8888
// .8'       `8. `88888.     `8888888P'    8 8888     `88.        8 8888      8 8888               8 8888           `8888888P'      `Y8888P ,88P'

// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.13;

import "./base/ACryptoSVaultAaveBase.sol";
import "./ACryptoSSwaps.sol";
import "./ACryptoSValasHelper.sol";

contract ACryptoSVaultValas is ACryptoSVaultAaveBase {
    TokenToSwap[] public tokensToSwap;

    using ACryptoSSwaps for TokenToSwap[];

    IMultiFeeDistribution public constant multiFeeDistribution =
        IMultiFeeDistribution(0x685D3b02b9b0F044A3C01Dbb95408FC2eB15a3b3);
    IChefIncentivesController public constant chefIncentivesController =
        IChefIncentivesController(0xB7c1d99069a4eb582Fc04E7e1124794000e7ecBF);

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() initializer {}

    function initialize(
        string memory _name,
        string memory _symbol,
        address _controller,
        address _token,
        address _rewardToken,
        uint256 _harvesterReward,
        address _lendingPoolAddressesProvider,
        uint256 _targetBorrowLimit,
        uint256 _targetBorrowLimitHysteresis,
        TokenToSwap[] memory _tokensToSwap
    ) public initializer {
        __ACryptoSVaultAaveBase_init(
            _name,
            _symbol,
            _controller,
            _token,
            _rewardToken,
            _harvesterReward,
            _lendingPoolAddressesProvider,
            _targetBorrowLimit,
            _targetBorrowLimitHysteresis
        );
        tokensToSwap.add(_tokensToSwap);
    }

    function setTokensToSwap(TokenToSwap[] memory _tokensToSwap)
        external
        onlyStrategist
    {
        delete tokensToSwap;
        tokensToSwap.add(_tokensToSwap);
    }

    function _harvestFarm(bool) internal virtual override {
        address[] memory tokens = new address[](2);
        tokens[0] = address(aToken);
        tokens[1] = address(variableDebtToken);

        chefIncentivesController.claim(address(this), tokens);

        // (
        //     uint256 amount,
        //     uint256 penaltyAmount,
        //     uint256 burnAmount
        // ) = multiFeeDistribution.withdrawableBalance(address(this));
        // console.log("-");
        // console.log(amount, penaltyAmount, burnAmount);
        // console.log(amount + penaltyAmount + burnAmount);
        // console.log((amount * 1e18) / (amount + penaltyAmount + burnAmount));

        multiFeeDistribution.exit(false);
    }

    function _harvestComplete(bool isManualHarvest) internal virtual override {
        tokensToSwap.swap();
        _stake();
        if (isManualHarvest) _rebalance(0);
    }

    function estimateDayReturn() public view returns (uint256 dayReturn) {
        uint256 supplyBalance = aToken.balanceOf(address(this));
        uint256 borrowBalance = variableDebtToken.balanceOf(address(this));
        return
            ACryptoSValasHelper.estimateDayReturn({
                token: address(token),
                supplyBalance: supplyBalance,
                borrowBalance: borrowBalance,
                newSupplyBalance: supplyBalance,
                newBorrowBalance: borrowBalance,
                rewardsDiscountFactor: _rewardsDiscountFactor()
            });
    }

    function estimateDayReturnNoBorrow()
        public
        view
        returns (uint256 dayReturn)
    {
        uint256 supplyBalance = aToken.balanceOf(address(this));
        uint256 borrowBalance = variableDebtToken.balanceOf(address(this));
        return
            ACryptoSValasHelper.estimateDayReturn({
                token: address(token),
                supplyBalance: supplyBalance,
                borrowBalance: borrowBalance,
                newSupplyBalance: supplyBalance - borrowBalance,
                newBorrowBalance: 0,
                rewardsDiscountFactor: _rewardsDiscountFactor()
            });
    }

    function estimateBestDayReturn()
        public
        view
        returns (uint256 dayReturn, uint256 borrowLimit)
    {
        return
            ACryptoSValasHelper.estimateBestDayReturn({
                token: address(token),
                supplyBalance: aToken.balanceOf(address(this)),
                borrowBalance: variableDebtToken.balanceOf(address(this)),
                rewardsDiscountFactor: _rewardsDiscountFactor(),
                maxBorrowLimit: targetBorrowLimit
            });
    }

    function _rewardsDiscountFactor() internal view returns (uint256) {
        return
            (0.26e18 * // this discount factor is a bit subtle as locks are grouped by week...
                (1e18 -
                    controller.performanceFee() -
                    controller.strategistReward())) / 1e18;
    }

    function calculateTargetBorrowLimit()
        public
        virtual
        override
        returns (uint256)
    {
        (, uint256 borrowLimit) = estimateBestDayReturn();
        return borrowLimit;
    }
}

interface IMultiFeeDistribution {
    function exit(bool _claim) external;

    // function withdrawableBalance(address user)
    //     external
    //     view
    //     returns (
    //         uint256 amount,
    //         uint256 penaltyAmount,
    //         uint256 burnAmount
    //     );
}

interface IChefIncentivesController {
    function claim(address _user, address[] calldata _tokens) external;
}
