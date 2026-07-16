// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

import { IBimZapRouter } from "./IBimZapRouter.sol";

/**
 * @title Token manager interface
 * @author kexley, Bim
 * @notice Interface for the token manager
 */
interface IBimTokenManager {
    /**
     * @notice Pull tokens from a user
     * @param _user Address of user to transfer tokens from
     * @param _inputs Addresses and amounts of tokens to transfer
     */
    function pullTokens(address _user, IBimZapRouter.Input[] calldata _inputs) external;
}
