// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;
import "./Deposit.sol";

contract DepositWrapper {
    // Staking funds of amount have been sent to this contract from sender
    event StakingFundsReceived(address sender, uint amount);

    // A deposit attempt, whether or not successful
    // This event includes the arguments to the standard deposit contract, excluding the withdrawal credentials
    // It also describes whether or not deposits are currently paused
    event DepositAttempt(
        bytes pubkey,
        bytes signature,
        bytes32 depositDataRoot,
        address sender
    );

    // A successful deposit with with given depositDataRoot
    event DepositSuccess(
        bytes pubkey,
        bytes signature,
        bytes32 depositDataRoot,
        address sender
    );

    // Deposits have been paused by the client
    event DepositsPaused();

    // Deposits have been unpaused by the client
    event DepositsUnpaused();

    // The pause address has changed
    event PauseAddrChanged(address oldPauseAddr, address newPauseAddr);

    // The deposit address has changed
    event DepositAddrChanged(address oldDepositAddr, address newDepositAddr);

    // Calls to the deposit function are "paused" and will not go through
    // Only the pauseAddr can pause deposits; see pause and unpause below
    bool public paused;

    // The address approved to call deposit
    address public depositAddr;

    // The client address approved to call pause
    address public pauseAddr;

    // The root user address approved to change either of the above approved calls
    // This is a sensitive address and should be backed by e.g., a multisig
    address public governanceAddr;

    // The withdrawal credentials corresponding to a client address for staking rewards
    // These are set only once, in the constructor, and cannot be changed after
    bytes public withdrawalCreds;

    // The address of the canonical staking deposit contract
    address public depositContractAddr;

    constructor(
        address _depositAddr,
        address _pauseAddr,
        address _governanceAddr,
        bytes memory _withdrawalCreds,
        address _depositContractAddr
    ) {
        // Check because bytes is dynamic
        require(
            _withdrawalCreds.length == 32,
            "Invalid withdrawal credential length"
        );

        // Make sure special addresses are unique
        require(
            _depositAddr != _pauseAddr &&
                _depositAddr != _governanceAddr &&
                _pauseAddr != _governanceAddr,
            "Cannot have redundant special addresses"
        );

        // Make sure special addresses are not zero
        require(
            _depositAddr != address(0) &&
                _pauseAddr != address(0) &&
                _governanceAddr != address(0)
        );

        // Set special addresses
        depositAddr = _depositAddr;
        emit DepositAddrChanged(address(0), depositAddr);
        pauseAddr = _pauseAddr;
        emit PauseAddrChanged(address(0), pauseAddr);
        governanceAddr = _governanceAddr;

        // Set withdrawal credentials (cannot be changed)
        withdrawalCreds = _withdrawalCreds;

        // Set canonical deposit contract address (cannot be changed)
        depositContractAddr = _depositContractAddr;

        // Deposits start out enabled
        paused = false;
    }

    // Only the depositAddr can call a given function
    modifier onlyDepositCaller() {
        require(msg.sender == depositAddr, "Unauthorized deposit caller");
        _;
    }

    // Only the pauseAddr can call a given function
    modifier onlyPauseCaller() {
        require(msg.sender == pauseAddr, "Unauthorized pause caller");
        _;
    }

    // Only the root user can call a given function
    modifier onlyGovernanceCaller() {
        require(msg.sender == governanceAddr, "Unauthorized governance caller");
        _;
    }

    modifier whenNotPaused() {
        require(!paused, "Contract is currently paused");
        _;
    }

    // Invoke the standard deposit contract with 32 ETH and a constructor-set client-controlled withdrawal address
    //
    // This function invokes the standard deposit function with the constructor-set client withdrawal credentials
    // The standard deposit function will only succeed if the provided depositDataRoot reflects those withdrawal credentials
    // See: https://github.com/ethereum/consensus-specs/blob/dev/solidity_deposit_contract/deposit_contract.sol#L128
    //
    // **This function is only be callable by the depositAddr**
    function deposit(
        bytes calldata pubkey,
        bytes calldata signature,
        bytes32 depositDataRoot
    ) external onlyDepositCaller whenNotPaused {
        // Note that a deposit is being attempted in a given paused state from a given address
        emit DepositAttempt(pubkey, signature, depositDataRoot, msg.sender);

        // Ensure that the contract has enough funds to deposit
        require(address(this).balance >= 32 ether, "Insufficient funds");

        // Invoke the standard deposit function without a gas limit because this call is essentially in tail position
        // https://github.com/ethereum/consensus-specs/blob/dev/solidity_deposit_contract/deposit_contract.sol#L101
        IDepositContract(depositContractAddr).deposit{value: 32 ether}(
            pubkey,
            withdrawalCreds,
            signature,
            depositDataRoot
        );

        // The deposit succeeded
        emit DepositSuccess(pubkey, signature, depositDataRoot, msg.sender);
    }

    // Pause deposits. Once this function is invoked, any calls to deposit will be ignored
    // **This function is only callable by the pauseCaller address**
    function pause() external onlyPauseCaller {
        // Ensure that execution does not continue if deposits are already paused
        require(!paused, "Deposits already paused");
        paused = true;
        emit DepositsPaused();
    }

    // Unpause deposits. Once this function is invoked, calls to deposit will once again go through
    // **This function is only callable by the pauseCaller address**
    function unpause() external onlyPauseCaller {
        // Ensure that execution does not continue if deposits are already unpaused
        require(paused, "Deposits already unpaused");
        paused = false;
        emit DepositsUnpaused();
    }

    // Change the cubist_deposit_caller_addr
    // **This function is only callable by the root/governance address**
    function changeDepositAddr(
        address newDepositAddr
    ) external onlyGovernanceCaller {
        require(
            newDepositAddr != governanceAddr,
            "Deposit address must be different from governance address"
        );
        require(
            newDepositAddr != pauseAddr,
            "Deposit address must be different from deposit address"
        );
        require(
            newDepositAddr != depositAddr,
            "New deposit address must not be old deposit address"
        );
        require(
            newDepositAddr != address(0),
            "New deposit address must not be zero"
        );
        emit DepositAddrChanged(depositAddr, newDepositAddr);
        depositAddr = newDepositAddr;
    }

    // Change the pause_caller_addr
    // **This function is only callable by the root/governance address**
    function changePauseAddr(
        address newPauseAddr
    ) external onlyGovernanceCaller {
        require(
            newPauseAddr != governanceAddr,
            "Pause address must be different from governance address"
        );
        require(
            newPauseAddr != depositAddr,
            "Pause address must be different from deposit address"
        );
        require(
            newPauseAddr != pauseAddr,
            "New pause address must not be old pause address"
        );
        require(
            newPauseAddr != address(0),
            "New pause address must not be zero"
        );
        emit PauseAddrChanged(pauseAddr, newPauseAddr);
        pauseAddr = newPauseAddr;
    }

    // Query the current balance of the contract
    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }

    // Receive staking funds into the contract
    // https://docs.soliditylang.org/en/v0.8.12/contracts.html#receive-ether-function
    // Funds received here are what the deposit function stakes
    // Receipt of funds is paused when the contract is paused
    receive() external payable whenNotPaused {
        emit StakingFundsReceived(msg.sender, msg.value);
    }

    // No fallback function: we have a receive function already, so fallback would just handle mistaken calls
}
