// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IAiWhitelister {
    /**
     * @dev reverted when the autoswapper is the zero address
     */
    error AutoSwapperNull();

    /**
     * @dev reverted when the user is the zero address
     */
    error NullUser();

    /**
     * reverted when the user was already whitelisted
     * @param user the address that was already whitelisted
     */
    error AlreadyWhitelisted(address user);

    /**
     * @dev reverted when the sender try to pay with a token that has no price set
     * @param token the token that has no price set
     */
    error PriceNotSet(IERC20 token);

    /**
     * @dev reverted when the sender doesn't send enough ETH to pay for the price
     * @param paidAmount the amount of ETH sent
     * @param requiredAmount the amount of ETH required
     * @notice the perfect amount of ETH is required, no more, no less
     */
    error InsufficientETH(uint256 paidAmount, uint256 requiredAmount);

    /**
     * @dev emitted when the address of the autoswapper is changed
     * @param autoswapper the address of the new autoswapper
     */
    event NewAutoswapper(address autoswapper);

    /**
     * @dev emitted when the price for a token is changed
     * @param token address of the token
     * @param price new amount of token to pay to get whitelisted
     */
    event NewPrice(IERC20 token, uint256 price);

    /**
     * @dev emitted when a new address is whitelisted
     * @param user the address that was whitelisted
     */
    event UserWhitelisted(address user);

    /**
     * @dev whitelist an address. require the sender to pay the price of the token (previous approval needed)
     * @param user the address to whitelist
     * @notice the sender must send the price of the token in ETH. Only work if the price is set for "WETH"
     */
    function whitelistETH(address user) external payable;

    /**
     * @dev whitelist an address. require the sender to pay the price of the token (previous approval needed)
     * @param user the address to whitelist
     * @param token the token to pay with
     */
    function whitelist(address user, IERC20 token) external;

    /**
     * @dev change the address of the autoswapper
     * @param autoswapper the address of the new autoswapper
     */
    function changeAutoswapper(address autoswapper) external;

    /**
     * @dev change the price of a token for a specified payment token
     * @param paymentToken the token to pay with
     * @param price the price to pay with the token specified
     */
    function changePrice(IERC20 paymentToken, uint256 price) external;

    /**
     * @dev get the address of the autoswapper
     * @return the address of the autoswapper
     */
    function getAutoswapper() external view returns (address);

    /**
     * @dev get the price payment with a token
     * @param token the token to get the price of
     * @return the price of the token
     * @notice if the price is not set, it will return 0
     */
    function getPrice(IERC20 token) external view returns (uint256);

    /**
     * @dev check if an address is whitelisted
     * @param user the address to check
     * @return true if the address is whitelisted
     */
    function isWhitelisted(address user) external view returns (bool);
}
