// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

enum TransactionType {
	DEPOSIT,
	AUTHORIZE
}

struct Transaction {
	TransactionType txType;
	bytes payload;
}

struct DepositTransaction {
	address recipient;
}

struct DelegateTransaction {
	uint256 amount;
	address validator;
}

struct TransferTransaction {
	address recipient;
	uint256 amount;
}

struct RedelegateTransaction {
	uint256 amount;
	address srcValidator;
	address dstValidator;
}

struct UnbondTransaction {
	uint256 amount;
}

struct WithdrawTransaction {
	uint256 amount;
}

interface ISequencerProxy {
	event Deposit(
		address indexed depositor,
		address indexed recipient,
		uint256 amount,
		uint256 lockup
	);

	event Delegate(
		address indexed delegator,
		address indexed validator,
		uint256 amount
	);

	event Redelegate(
		address indexed delegator,
		address indexed srcValidator,
		address indexed dstValidator,
		uint256 amount
	);

	event ClaimRewards(address indexed delegator, address indexed validator);

	event Unbond(
		address indexed delegator,
		address indexed validator,
		uint256 amount
	);

	event Withdraw(
		address indexed sender,
		address indexed recipient,
		uint256 amount
	);

	event Transfer(
		address indexed sender,
		address indexed recipient,
		uint256 amount
	);

	event Vote(
		address indexed voter,
		uint64 indexed proposalId,
		uint32 option,
		string metadata
	);

	event SetRewardRecipient(
		address indexed delegator,
		address indexed recipient
	);

	event Grant(
		address indexed granter,
		address indexed grantee,
		string msgTypeUrl,
		uint32 expiration
	);

	event Revoke(
		address indexed granter,
		address indexed grantee,
		string msgTypeUrl
	);

	event Authorize(address indexed sender, bytes data);

	/**
	 * @dev Deposits tokens into the sequencer chain for a specified recipient.
	 * @param depositor The address depositing the tokens.
	 * @param recipient The address of the recipient on the sequencer chain.
	 * @param amount The amount of tokens to deposit.
	 * @param lockup The amount of time to lock up the tokens
	 */
	function deposit(
		address depositor,
		address recipient,
		uint256 amount,
		uint256 lockup
	) external;

	/**
	 * @dev Delegates tokens to a specified validator on the sequencer chain.
	 * @param delegator The address delegating the tokens.
	 * @param validator The validator receiving the delegation.
	 * @param amount The amount of tokens to delegate.
	 */
	function delegate(
		address delegator,
		address validator,
		uint256 amount
	) external;

	/**
	 * @dev Redelegates tokens between two validators on the sequencer chain.
	 * @param delegator The address redelegating the tokens.
	 * @param srcValidator The validator to undelegate from.
	 * @param dstValidator The validator to delegate to.
	 * @param amount The amount of tokens to redelegate.
	 */
	function redelegate(
		address delegator,
		address srcValidator,
		address dstValidator,
		uint256 amount
	) external;

	/**
	 * @dev Claims rewards from a specified validator on the sequencer chain.
	 * @param delegator The address claiming the rewards.
	 * @param validator The validator in the delegation that accrued rewards.
	 */
	function claimRewards(address delegator, address validator) external;

	/**
	 * @dev Unbond tokens from a specified validator on the sequencer chain.
	 * @param delegator The address unbonding the tokens.
	 * @param validator The validator to undelegate from.
	 * @param amount The amount of tokens to unbond.
	 */
	function unbond(
		address delegator,
		address validator,
		uint256 amount
	) external;

	/**
	 * @dev Withdraw tokens to ethereum towards a specified recipient.
	 * @param sender The address withdrawing the tokens.
	 * @param recipient The address of the recipient on ethereum.
	 * @param amount The amount of tokens to withdraw.
	 */
	function withdraw(
		address sender,
		address recipient,
		uint256 amount
	) external;

	/**
	 * @dev Transfer tokens to a specified recipient on the sequencer chain.
	 * @param sender The address sending the tokens.
	 * @param recipient The address of the recipient.
	 * @param amount The amount of tokens to transfer.
	 */
	function transfer(
		address sender,
		address recipient,
		uint256 amount
	) external;

	/**
	 * @dev Vote on a live proposal on the sequencer chain.
	 * @param voter The address voting on the proposal.
	 * @param proposalId The proposal being voted on.
	 * @param option The decision of the voter (yes/no/no-with-veto/abstain).
	 * @param metadata Extra details attached to be attached to the vote.
	 */
	function vote(
		address voter,
		uint64 proposalId,
		uint32 option,
		string memory metadata
	) external;

	/**
	 * @dev Change the rewards recipient address on the sequencer chain.
	 * @param delegator The address of the delegator accruing rewards.
	 * @param recipient The address at which rewards will actually accumulate.
	 */
	function setRewardRecipient(address delegator, address recipient) external;

	/**
	 * @dev Grants an address on the sequencer to act on the behalf of another address.
	 * @param granter The address which grants authorization to another address.
	 * @param grantee The address who receives the authorization from the granter, to act on behalf of.
	 * @param msgTypeUrl The type of message to be authorized.
	 * @param expiration The expiration unix timestamp in seconds of the authorization.
	 * 					 0 means no expiration. 2^32 = 4,294,967,296 seconds => Limited to year 2106
	 */
	function grant(
		address granter,
		address grantee,
		string memory msgTypeUrl,
		uint32 expiration
	) external;

	/**
	 * @dev Revokes the authorization from an address to act on behalf of another address.
	 * @param granter The address which had granted the authorization.
	 * @param grantee The address which had received the authorization.
	 * @param msgTypeUrl The type of message to be revoked.
	 */
	function revoke(
		address granter,
		address grantee,
		string memory msgTypeUrl
	) external;

	/**
	 * @dev Sends an authorized transaction on the sequencer chain from the provided address.
	 * @param sender The address authorizing the transaction.
	 * @param data Encoded transaction data for the sequencer chain.
	 */
	function authorize(address sender, bytes calldata data) external;
}
