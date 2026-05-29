// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

import "./constants/addresses.sol";
import "./constants/roles.sol";
import "./interfaces/IPriceOracle.sol";
import "./AddressAccessor.sol";

bytes32 constant USDR_BONDING_ADDRESS = bytes32(keccak256("USDRBonding"));

interface IExchange {
    function scaleFromUnderlying(uint256 amount)
        external
        view
        returns (uint256);

    function swapFromUnderlying(uint256 amountIn, address to)
        external
        returns (uint256 amountOut);

    function swapFromTNGBL(
        uint256 amountIn,
        uint256 amountOutMin,
        address to
    ) external returns (uint256 amountOut);
}

interface IStaking {
    function stake(uint256 amount) external;

    function unstake(uint256 amount) external;

    function usdrMarketCap() external view returns (uint256);
}

contract USDRBonding is AddressAccessor {
    uint16 public percentage; // 100 = 1%
    uint256 public available;
    uint256 public lastUpdate;

    constructor() {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    function mint(
        uint256 deposit,
        uint256 amountToMint,
        address onBehalfOf
    ) external onlyRole(CONTROLLER_ROLE) returns (uint256 minted) {
        available -= deposit;
        (
            address underlying,
            address exchange,
            address tngbl,
            address tngblOracle
        ) = abi.decode(
                addressProvider.getAddresses(
                    abi.encode(
                        UNDERLYING_ADDRESS,
                        USDR_EXCHANGE_ADDRESS,
                        TNGBL_ADDRESS,
                        TNGBL_ORACLE_ADDRESS
                    )
                ),
                (address, address, address, address)
            );
        IERC20(underlying).transferFrom(onBehalfOf, address(this), deposit);
        IERC20(underlying).approve(exchange, deposit);
        minted = IExchange(exchange).swapFromUnderlying(deposit, msg.sender);
        amountToMint -= minted;
        uint256 tngblAmount = ((amountToMint << 1) *
            (10**((IERC20Metadata(tngbl).decimals() << 1) - 9))) /
            IPriceOracle(tngblOracle).quote(1e18) +
            1;
        IERC20(tngbl).approve(exchange, tngblAmount);
        minted += IExchange(exchange).swapFromTNGBL(
            tngblAmount,
            amountToMint,
            msg.sender
        );
    }

    function recoverLostTokens(address token)
        external
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        uint256 balance = IERC20(token).balanceOf(address(this));
        IERC20(token).transfer(msg.sender, balance);
    }

    function reset(uint256 amount) external onlyRole(CONTROLLER_ROLE) {
        uint256 timestamp = block.timestamp / 1 days;
        require(timestamp > lastUpdate, "too early");
        lastUpdate = timestamp;
        available = amount;
    }

    function setPercentage(uint16 value) external onlyRole(DEFAULT_ADMIN_ROLE) {
        percentage = value;
    }
}
