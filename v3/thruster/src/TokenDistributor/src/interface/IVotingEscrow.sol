// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

interface IVotingEscrow {
    /**
     * @dev amount - The amount of tokens locked
     * @dev end - The timestamp when the lock ends
     */
    struct LockedBalance {
        int128 amount;
        uint256 end;
    }

    /**
     * @dev Returns the amount and end week of the owner's lock position 
     * @param owner The address of the account that has locked tokens
     */
    function locked(address owner) external view returns (LockedBalance memory lock);

    /**
     * @dev Deposits tokens into the escrow contract on behalf of another user 
     * @param owner - The address of the account that is depositing tokens 
     * @param value - The amount of tokens to deposit 
     */
    function deposit_for(address owner, uint256 value) external;

    /**
     * @dev Creates a new lock position for the owner 
     * @param value - The amount of tokens to lock
     * @param unlockTime - The timestamp when the lock expires 
     */
    function create_lock(uint256 value, uint256 unlockTime) external;

    /**
     * @dev Increases the amount of tokens locked, must have an existing lock 
     * @param value - The amount of tokens to increase the lock by 
     */
    function increase_amount(uint256 value) external;

    /**
     * @dev Increases the unlock time of the lock, must have an existing lock
     * @param unlockTime - The new unlock time 
     */
    function increase_unlock_time(uint256 unlockTime) external;

    /**
     * @dev Withdraws tokens from the escrow contract, only when the lock has expired
     */
    function withdraw() external;

    /**
     * @dev Gets the current voting power of the owner 
     * @param owner - The address of the account to check the balance of
     */
    function balanceOf(address owner) external view returns (uint256);

    /**
     * @dev Returns the total voting power (total veToken supply)
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the total number of locked tokens
     */
    function supply() external view returns (uint256);
}
