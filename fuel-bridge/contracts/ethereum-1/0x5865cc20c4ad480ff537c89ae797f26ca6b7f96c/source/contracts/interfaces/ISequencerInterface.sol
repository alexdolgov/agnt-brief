// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

import { IERC1363Receiver } from "@openzeppelin/contracts/interfaces/IERC1363Receiver.sol";

interface ISequencerInterface is IERC1363Receiver {
	event Deposit(address indexed depositor, uint256 amount);
	event TransactionLimitSet(uint256 limit);
	event TokenDenominationSet(string denomination);

	/**
	 * @dev Deposits tokens into the sequencer chain.
	 * @param amount The amount of tokens to deposit.
	 */
	function deposit(uint256 amount) external;

	/**
	 * @dev Deposits tokens into the sequencer chain for a given address.
	 * @param amount The amount of tokens to deposit.
	 * @param recipient The recipient address
	 */
	function depositFor(uint256 amount, address recipient) external;

	/**
	 * @dev Deposits tokens into the sequencer chain and stakes them.
	 * @param amount The amount of tokens to deposit and stake.
	 * @param validator The address of the validator.
	 */
	function depositAndDelegate(uint256 amount, address validator) external;

	/**
	 * @dev Delegates a specified amount of tokens.
	 * @param amount The amount of tokens to delegate.
	 * @param validator The address of the validator.
	 */
	function delegate(uint256 amount, address validator) external;

	/**
	 * @dev Changes the delegate of currently delegated tokens.
	 * @param amount The amount of tokens to delegate.
	 * @param srcValidator The address of the current validator.
	 * @param dstValidator The address of the new validator.
	 */
	function redelegate(
		uint256 amount,
		address srcValidator,
		address dstValidator
	) external;

	/**
	 * @dev Claims rewards
	 * @param validator address of the cosmos validator that generated rewards
	 */
	function claimRewards(address validator) external;

	/**
	 * @dev Undelegates and initiates the unbonding period on the sequencer chain.
	 * @param amount The amount of tokens to unbond.
	 * @param validator Validator from which the tokens are unbonded
	 */
	function unbond(uint256 amount, address validator) external;

	/**
	 * @dev Withdraws a specified amount of tokens.
	 * @param amount The amount of tokens to withdraw.
	 */
	function withdraw(uint256 amount) external;

	/**
	 * @dev Withdraws a specified amount of tokens to the given address.
	 * @param amount The amount of tokens to withdraw.
	 * @param recipient Address of the recipient
	 */
	function withdrawTo(uint256 amount, address recipient) external;

	/**
	 * @dev Transfers tokens to a specified recipient on the sequencer chain.
	 * @param recipient The address of the recipient on the sequencer chain.
	 * @param amount The amount of tokens to transfer.
	 */
	function transfer(address recipient, uint256 amount) external;

	/**
	 * @dev Sends a vote on the sequencer chain
	 * @param proposalId The proposal to vote
	 * @param option The option to vote (0 = abstain, 1 = yes, 2 = no, 3 = no with veto)
	 * @param metadata Metadata to attach
	 */
	function vote(
		uint64 proposalId,
		uint32 option,
		string memory metadata
	) external;

	/**
	 * @dev Sets a reward recipient for the delegator
	 * @param rewardRecipient Address of the rewards recipient
	 */
	function setRewardRecipient(address rewardRecipient) external;

	/**
	 * @dev Grants an address on the sequencer to claim rewards on behalf of another address.
	 * @param grantee The address which receives the authorization.
	 * @param expiration The expiration unix timestamp in seconds of the authorization.
	 * 					 0 means no expiration. 2^32 = 4,294,967,296 seconds => Limited to year 2106
	 */
	function grantClaimRewards(address grantee, uint32 expiration) external;

	/**
	 * @dev Revokes an address on the sequencer from claiming rewards on behalf of another address.
	 * @param grantee The address whose authorization is to be revoked.
	 */
	function revokeClaimRewards(address grantee) external;

	/**
	 * @dev Handles the migration of tokens.
	 * @param owner The owner of the migrated tokens.
	 * @param amount The amount of tokens being migrated.
	 * @param vestingPeriod The number of seconds to vest tokens in the account for.
	 * @param validator The validator to delegate to, or 0x0 for no delegation.
	 */
	function handleMigration(
		address owner,
		uint256 amount,
		uint256 vestingPeriod,
		address validator
	) external;

	/**
	 * @dev Handles an ERC1363 transferAndCall to the lockup contract.
	 *
	 * @param operator The address which initiated the transfer.
	 * @param from The address which transferred the tokens.
	 * @param value The amount of tokens transferred.
	 * @param data Additional, optional data to specify deposit and staking actions.
	 *
	 * @return A bytes4 function selector representing the ERC1363 `onTransferReceived` function.
	 */
	function onTransferReceived(
		address operator,
		address from,
		uint256 value,
		bytes calldata data
	) external returns (bytes4);

	/**
	 * @dev Sets the new transactions limit. Should be called only by admin.
	 * @param newLimit New limit for the txns
	 */
	function setTxnLimit(uint256 newLimit) external;

	/**
	 * @dev Sets the token denomination. Should be called only by admin
	 * @param denom New token denomination
	 */
	function setTokenDenomination(string calldata denom) external;

	/**
	 *
	 * @param from The address that owns the funds
	 * @param amount The amount of tokens transferred
	 */
	function recoveryTransferFrom(address from, uint256 amount) external;
}
