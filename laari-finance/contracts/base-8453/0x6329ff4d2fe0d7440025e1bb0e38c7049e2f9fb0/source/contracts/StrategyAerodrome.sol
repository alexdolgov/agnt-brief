// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./BaseStrategy.sol";
import "./interface/IAerodrome.sol";
import "./interface/IAerodromeRouter.sol";

contract StrategyAerodrome is BaseStrategy {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;
    
    IAerodromeRouter.Route[] public earnedToToken0AddressPath;
    IAerodromeRouter.Route[] public earnedToToken1AddressPath;

    function initialize(
        address[] memory _addresses,
        IAerodromeRouter.Route[] memory _earnedToToken0AddressPath,
        IAerodromeRouter.Route[] memory _earnedToToken1AddressPath
    ) public virtual initializer {
        BaseStrategy.initialize(
            _addresses, 0,
            true, true,
            new address[](0), new address[](0));
        for (uint i; i < _earnedToToken0AddressPath.length; ++i) {
            earnedToToken0AddressPath.push(_earnedToToken0AddressPath[i]);
        }
        for (uint i; i < _earnedToToken1AddressPath.length; ++i) {
            earnedToToken1AddressPath.push(_earnedToToken1AddressPath[i]);
        }
    }

    function _vaultDeposit(uint256 _amount)
        internal
        virtual override
        returns (uint256)
    {
        uint256 wantAmt = IERC20(wantAddress).balanceOf(address(this));
        if (wantAmt > 0) {
            IERC20(wantAddress).safeApprove(farmContractAddress, wantAmt);
        }
          IAerodrome(farmContractAddress).deposit(wantAmt);
        return _amount;
    }

    function _vaultWithdraw(uint256 _wantAmt)
        internal
        virtual override
    {
        IAerodrome(farmContractAddress).withdraw(_wantAmt);
    }

    function earnAero() public {
        if (onlyGov) {
            require(msg.sender == govAddress, "!gov");
        }
        IAerodrome(farmContractAddress).getReward(address(this));
        uint256 earnedAmt = IERC20(earnedAddress).balanceOf(address(this));
        IERC20(earnedAddress).safeApprove(uniRouterAddress, earnedAmt);

        if (earnedAddress != token0Address) {
            // Swap half earned to token0
            IAerodromeRouter(uniRouterAddress).swapExactTokensForTokens(
                earnedAmt.div(2), 0, earnedToToken0AddressPath, address(this), block.timestamp
            );
        }

        if (earnedAddress != token1Address) {
            // Swap half earned to token1
            IAerodromeRouter(uniRouterAddress).swapExactTokensForTokens(
                earnedAmt.div(2), 0, earnedToToken1AddressPath, address(this), block.timestamp
            );
        }

        // Get want tokens, ie. add liquidity
        uint256 token0Amt = IERC20(token0Address).balanceOf(address(this));
        uint256 token1Amt = IERC20(token1Address).balanceOf(address(this));
        if (token0Amt > 0 && token1Amt > 0) {
            IERC20(token0Address).safeApprove(uniRouterAddress, token0Amt);
            IERC20(token1Address).safeApprove(uniRouterAddress, token1Amt);
            IAerodromeRouter(uniRouterAddress).addLiquidity(
                token0Address,
                token1Address,
                false,
                token0Amt,
                token1Amt,
                0,
                0,
                address(this),
                block.timestamp
            );
        }
        _vaultDeposit(IERC20(wantAddress).balanceOf(address(this)));
    }

    function _vaultHarvest()
        internal
        virtual override
    {
    }

    function _vaultUserInfo()
        public
        virtual override
        view
        returns (uint256 shares)

    {
        shares = IAerodrome(farmContractAddress).balanceOf(address(this));
    }

    function _vaultPending()
        public
        virtual override
        view
        returns (uint256 pending, uint256 pending1)
    {
        pending = IAerodrome(farmContractAddress).earned(address(this));
        pending1 = 0;
        return(pending, pending1);       
    }

    function _vaultEmergencyWithdraw()
        internal
        virtual override
    {
    }

}