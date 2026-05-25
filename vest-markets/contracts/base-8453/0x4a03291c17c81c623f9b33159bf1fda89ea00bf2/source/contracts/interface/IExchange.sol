// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

import {ITreasury} from "./ITreasury.sol";

interface IExchange {
    /**
     * STRUCTS *
     */
    enum StateVariables {
        position,
        lpBalances,
        lpShares,
        accountBalances
    }

    struct StateUpdate {
        StateVariables variable;
        bytes key;
        bytes value;
        bytes32 metadata;
    }

    struct Position {
        int256 size;
        int256 cost;
    }

    /**
     * ERRORS *
     */
    error ZeroAddressSet();

    /**
     * @notice Get the balance of collateral for a specific account.
     * @dev This external view function takes the address of an account as a parameter
     *      and returns the balance of collateral associated with that account.
     * @param account The address of the account to query.
     * @return balance The balance of collateral for the specified account.
     */
    function accountBalances(address account) external view returns (uint256);

    /**
     * @notice Get the address of the collateral token.
     * @dev This external view function returns the address of the collateral token.
     * @return collateralToken The address of the collateral token.
     */
    function collateralToken() external view returns (address);

    /**
     * @notice Returns the liquidity pool balances of the specified account.
     * @param _account The address of the account for which liquidity pool balances are queried.
     * @return The liquidity pool balances of the specified account.
     */
    function lpBalances(address _account) external view returns (uint256);

    /**
     * @notice Get position information for a specific account and market.
     * @param _account The trader's account address.
     * @param _underlying The market identifier.
     * @return A tuple containing the size and cost of the position.
     */
    function getPosition(address _account, bytes32 _underlying) external view returns (int256, int256);

    /**
     * @notice Setup contract parameters.
     * @dev This function is only callable by the DEFAULT_ADMIN_ROLE address and is used to set contract parameters.
     * It sets the addresses of the collateral token, router, isolated wallet factory, and keeper.
     * It also specifies the number of decimal places for the collateral token.
     * If an admin address is provided, it grants the DEFAULT_ADMIN_ROLE to the new admin and revokes it from the caller,
     * ensuring smooth ownership transfer. Additionally, it grants the KEEPER_ROLE to the keeper and ROUTER_ROLE to the router.
     * @param _collateralToken Address of the collateral token.
     * @param _router Address of the router.
     * @param _keeper Address of the keeper.
     * @param _admin Main admin of this contract.
     * @param _treasury Treasury of this contract.
     */
    function setup(
        address _collateralToken,
        address _router,
        address _keeper,
        address _admin,
        ITreasury _treasury
    ) external;

    /**
     * @notice Pauses the exchange when insolvent.
     * @dev This function is callable only by the Keeper role and can be used to pause the exchange
     * when it becomes insolvent. It internally pauses the contract, deletes all market orders, and
     * pauses the connected router.
     */
    function pause() external;

    /**
     * @notice Unpauses the exchange when solvent again.
     * @dev This function is callable only by the Keeper role and can be used to unpause the exchange
     * when it becomes solvent again. It internally unpauses the contract and unpauses the connected router.
     */
    function unpause() external;

    /**
     * @notice Get the unique hash key for a position based on the trader account and underlying market.
     * @param _account The trader's account address.
     * @param _underlying The market identifier.
     * @return The keccak256 hash of the position.
     */
    function getPositionKey(address _account, bytes32 _underlying) external pure returns (bytes32);

    // /**
    //  * @notice Create a new tradeable market.
    //  * @dev This function is used to set up a new market with the specified parameters.
    //  * It is only callable by the DEFAULT_ADMIN_ROLE and when the contract is not paused.
    //  * @param market The market settings. See MarketSettings for details.
    //  */
    // function setupMarket(MarketSettings memory market) external;

    //note: in progress
    function updateStateVariables(StateUpdate[] memory stateVariablesToUpdate) external;
}
