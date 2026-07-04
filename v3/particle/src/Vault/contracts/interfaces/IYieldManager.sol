// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

interface IYieldManager {
    /**
     * @notice drip the yield by minting the yield stripped token
     * @param recipient the recipient of the yield
     * @param yield the yield amount
     */
    function mintYield(address recipient, uint256 yield) external;

    /**
     * @notice return the yield by burning the yield stripped token
     * @param amount the amount of yield to burn
     */
    function burnUnmaturedYield(address fixedRate, uint256 amount) external;

    /**
     * @notice log a deposit event for the principal to the protocol
     * @param amount the amount of principal deposited
     */
    function depositPrincipal(uint256 amount) external;

    /**
     * @notice log a withdraw event for the principal from the protocol
     * @param amount the amount of principal withdrawn
     */
    function withdrawPrincipal(uint256 amount) external;

    /**
     * @notice get the idle yield from the protocol
     * @return idleYield the current idle yield
     */
    function getIdleYield() external view returns (uint256 idleYield);

    /**
     * @notice get the current yield rate
     * @return yieldRate the current yield rate
     */
    function getYieldRate() external view returns (uint256 yieldRate);
}
