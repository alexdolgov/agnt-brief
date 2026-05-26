// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

import '../interface/IUniswapV2Factory.sol';
import '../interface/IUniswapV2Router02.sol';
import '../interface/IERC20.sol';
import '../interface/IProtocolFeeCollector.sol';
import '../library/SafeERC20.sol';
import '../utils/Migratable.sol';

contract ProtocolFeeBurner is Migratable {

    event BuyAndBurnDeri(address token, uint256 tokenAmount, uint256 deriAmount);

    using SafeERC20 for IERC20;

    IUniswapV2Factory public factory;
    IUniswapV2Router02 public router;

    address public deri;
    address public bToken;

    address public burningDestination;
    address public protocolFeeCollector;

    constructor (
        address factory_,
        address router_,
        address deri_,
        address bToken_,
        address burningDestination_,
        address protocolFeeCollector_
    ) {
        factory = IUniswapV2Factory(factory_);
        router = IUniswapV2Router02(router_);
        deri = deri_;
        bToken = bToken_;
        burningDestination = burningDestination_;
        protocolFeeCollector = protocolFeeCollector_;

        require(factory.getPair(deri_, bToken_) != address(0), 'PFB: invalid bToken');

        _controller = msg.sender;
    }

    function approveMigration() external override _controller_ {
        require(_migrationTimestamp != 0 && block.timestamp >= _migrationTimestamp, 'PFB: migrationTimestamp not met yet');
        IProtocolFeeCollector(protocolFeeCollector).setBurner(_migrationDestination);
    }

    function executeMigration(address source) external override _controller_ {
        // we don't need to do anything here
    }

    function isValidTokenPair(address token0, address token1) external view returns (bool) {
        return (
            (factory.getPair(token0, token1) != address(0)) &&
            (token0 == bToken || token1 == bToken ||
             factory.getPair(token0, bToken) != address(0) || factory.getPair(token1, bToken) != address(0))
        );
    }

    function buyAndBurnDeri(address[] calldata path) external _controller_ {
        uint256 len = path.length;
        require(path[len - 1] == deri, 'PFB: invalid path');

        IERC20 token = IERC20(path[0]);
        IProtocolFeeCollector(protocolFeeCollector).transferToken(address(token));
        uint256 balance = token.balanceOf(address(this));

        if (balance != 0) {
            if (address(token) == deri) {
                token.safeTransfer(burningDestination, balance);
                emit BuyAndBurnDeri(address(token), balance, balance);
            } else {
                if (token.allowance(address(this), address(router)) == 0) {
                    token.safeApprove(address(router), type(uint256).max);
                }
                uint256 deriBalance1 = IERC20(deri).balanceOf(burningDestination);
                router.swapExactTokensForTokens(balance, 0, path, burningDestination, block.timestamp + 3600);
                uint256 deriBalance2 = IERC20(deri).balanceOf(burningDestination);
                emit BuyAndBurnDeri(address(token), balance, deriBalance2 - deriBalance1);
            }
        }
    }

}
