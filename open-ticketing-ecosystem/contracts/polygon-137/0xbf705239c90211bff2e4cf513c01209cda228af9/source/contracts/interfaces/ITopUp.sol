// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router02.sol";

interface ITopUp {
    event ToppedUpCustodial(
        uint32 indexed _integratorIndex,
        address indexed _debitedAccount,
        uint256 _availableFuel,
        uint256 _amountFuel,
        uint256 _price,
        bytes32 _externalId
    );
    event ToppedUpNonCustodial(
        uint32 indexed _integratorIndex,
        address indexed _debitedAccount,
        uint256 _availableFuel,
        uint256 _amountFuel,
        uint256 _price
    );
    event UpdateBaseToken(address _old, address _new);
    event UpdateWeth(address _old, address _new);
    event UpdateRouter(address _old, address _new);
    event UpdateOracle(address _old, address _new);

    function baseToken() external returns (IERC20Metadata);

    function weth() external returns (IERC20);

    function router() external returns (IUniswapV2Router02);

    function topUpCustodial(
        uint32 _integratorIndex,
        uint256 _amountIn,
        uint256 _amountOutMin,
        bytes32 _externalId
    ) external;

    function topUpNonCustodial(uint32 _integratorIndex, uint256 _amountFuel) external;

    function pause() external;

    function unpause() external;

    function setBaseToken(address _baseToken) external;

    function setWeth(address _weth) external;

    function setRouter(address _router) external;

    function setApprovals() external;
}
