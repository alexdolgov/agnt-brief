// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import {Initializable} from "./imports/Initializable.sol";
import {ICipCaller} from "./interfaces/ICipCaller.sol";
import {IERC20} from "./interfaces/IERC20.sol";
import {Pausable} from "./imports/Pausable.sol";
import {Mutex} from "./imports/Mutex.sol";
import {Utils} from "./imports/Utils.sol";

contract Vault is Initializable, Pausable, Mutex {
    struct BindingInfo {
        uint256 minAmount;
        bool enabled;
    }

    event Deposit(
        address sender,
        string recipient,
        address token,
        uint256 amount
    );
    event Withdraw(
        string sender,
        address recipient,
        address token,
        uint256 amount
    );
    event ExecutionChainUpdated(uint128 executionChainId, address caller);
    event BindingInfoUpdated(address token, uint256 minAmount, bool enabled);
    event CipCallerUpdated(address cipCaller, address caller);
    event CipExecutorUpdated(address cipExecutor, address caller);
    event DexCallerContractUpdated(bytes32 dexCallerContract, address caller);
    event DexExecutionContractUpdated(
        string dexExecutionContract,
        address caller
    );

    error ErrOnlyExecutor();
    error ErrBindingDisabled();
    error ErrMinAmount(uint256 value, uint256 minAmount);
    error ErrEmptyAsset();
    error ErrInvalidDexCallerContract();
    error ErrInsufficientBalance(uint256 amount, uint256 balance);
    error ErrFailedNativeTransfer(address recipient);

    uint256 public constant DECIMALS = 8;
    uint16 public chainId;
    uint16 public executionChainId;
    address public cipCaller;
    address public cipExecutor;
    bytes32 public dexCallerContract;
    string public dexExecutionContract;
    mapping(address => BindingInfo) public bindings;
    mapping(address => uint256) public balances;

    modifier onlyExecutor() {
        if (msg.sender != cipExecutor) {
            revert ErrOnlyExecutor();
        }
        _;
    }

    modifier onlyDexCallerContract(bytes32 callerContact_) {
        if (callerContact_ != dexCallerContract) {
            revert ErrInvalidDexCallerContract();
        }
        _;
    }

    function init(
        address admin_,
        uint16 chainId_,
        uint16 executionChainId_,
        address cipCaller_,
        address cipExecutor_,
        bytes32 dexCallerContract_,
        string calldata dexExecutionContract_
    ) external whenNotInitialized {
        if (admin_ == address(0)) {
            revert ErrZeroAddress();
        }
        if (cipCaller_ == address(0)) {
            revert ErrZeroAddress();
        }
        if (cipExecutor_ == address(0)) {
            revert ErrZeroAddress();
        }
        admin = admin_;
        pauser = admin_;
        chainId = chainId_;
        executionChainId = executionChainId_;
        cipCaller = cipCaller_;
        cipExecutor = cipExecutor_;
        dexCallerContract = dexCallerContract_;
        dexExecutionContract = dexExecutionContract_;
        isInited = true;
    }

    function deposit(
        string calldata recipient_
    ) external payable whenInitialized whenNotPaused mutex {
        BindingInfo memory binding = bindings[address(0)];
        if (!binding.enabled) {
            revert ErrBindingDisabled();
        }
        if (msg.value < binding.minAmount) {
            revert ErrMinAmount(msg.value, binding.minAmount);
        }

        balances[address(0)] += msg.value;

        uint256 divider = 10 ** (18 - DECIMALS);

        string memory sender = Utils.addressToHexString(msg.sender);
        string memory recipient = recipient_;
        if (bytes(recipient_).length == 0) {
            recipient = sender;
        }

        emit Deposit(msg.sender, recipient, address(0), msg.value);

        string[] memory args = new string[](6);
        args[0] = ""; // require empty string for this contract (CIP)
        args[1] = sender; // from
        args[2] = recipient; // to
        args[3] = Utils.uint256ToDecString(chainId); // chainId
        args[4] = Utils.addressToHexString(address(0)); // asset
        args[5] = Utils.uint256ToDecString(msg.value / divider); // amount
        ICipCaller(cipCaller).call(
            executionChainId,
            dexExecutionContract,
            "deposit",
            args
        );
    }

    function depositERC20(
        string calldata recipient_,
        address token_,
        uint256 amount_
    ) external whenInitialized whenNotPaused mutex {
        if (token_ == address(0)) {
            revert ErrZeroAddress();
        }
        BindingInfo memory binding = bindings[token_];
        if (!binding.enabled) {
            revert ErrBindingDisabled();
        }
        if (amount_ < binding.minAmount) {
            revert ErrMinAmount(amount_, binding.minAmount);
        }

        balances[token_] += amount_;

        uint256 multiplier = 1;
        uint256 divider = 1;
        uint256 tokenDecimals = IERC20(token_).decimals();
        if (tokenDecimals > DECIMALS) {
            divider = 10 ** (tokenDecimals - DECIMALS);
        } else {
            multiplier = 10 ** (DECIMALS - tokenDecimals);
        }

        string memory sender = Utils.addressToHexString(msg.sender);
        string memory recipient = recipient_;
        if (bytes(recipient_).length == 0) {
            recipient = sender;
        }

        emit Deposit(msg.sender, recipient, token_, amount_);

        string[] memory args = new string[](6);
        args[0] = ""; // require empty string for this contract (CIP)
        args[1] = sender; // from
        args[2] = recipient; // to
        args[3] = Utils.uint256ToDecString(chainId); // chainId
        args[4] = Utils.addressToHexString(token_); // asset
        args[5] = Utils.uint256ToDecString((amount_ * multiplier) / divider); // amount
        ICipCaller(cipCaller).call(
            executionChainId,
            dexExecutionContract,
            "deposit",
            args
        );

        Utils.safeCall(
            token_,
            abi.encodeWithSelector(
                IERC20(token_).transferFrom.selector,
                msg.sender,
                address(this),
                amount_
            )
        );
    }

    function withdraw(
        bytes32 callerContract_,
        string calldata sender_,
        address payable recipient_,
        address token_,
        uint256 amount_
    )
        external
        whenInitialized
        whenNotPaused
        mutex
        onlyExecutor
        onlyDexCallerContract(callerContract_)
    {
        if (token_ == address(0)) {
            // withdraw native token

            uint256 balance = balances[token_];
            uint256 divider = 10 ** (18 - DECIMALS);
            amount_ *= divider;
            if (balance < amount_) {
                revert ErrInsufficientBalance(amount_, balance);
            }

            unchecked {
                balances[token_] = balance - amount_;
            }

            emit Withdraw(sender_, recipient_, token_, amount_);

            // NOTE: We've checked recipient_ address is not ZERO before calling withdraw()
            // slither-disable-start missing-zero-check
            // slither-disable-next-line low-level-calls
            (bool transferStatus, ) = recipient_.call{value: amount_}("");
            if (!transferStatus) {
                revert ErrFailedNativeTransfer(recipient_);
            }
            // slither-disable-end missing-zero-check
        } else {
            // withdraw ERC20 token

            uint256 multiplier = 1;
            uint256 divider = 1;
            uint256 tokenDecimals = IERC20(token_).decimals();
            if (tokenDecimals > DECIMALS) {
                multiplier = 10 ** (tokenDecimals - DECIMALS);
            } else {
                divider = 10 ** (DECIMALS - tokenDecimals);
            }

            uint256 balance = balances[token_];

            // NOTE: We cut extra decimals, protocol DECIMALS=8, token decimals might be less (e.g. 6)
            // slither-disable-next-line divide-before-multiply
            amount_ = (amount_ * multiplier) / divider;
            if (balance < amount_) {
                revert ErrInsufficientBalance(amount_, balance);
            }

            unchecked {
                balances[token_] = balance - amount_;
            }

            emit Withdraw(sender_, recipient_, token_, amount_);

            Utils.safeCall(
                token_,
                abi.encodeWithSelector(
                    IERC20(token_).transfer.selector,
                    recipient_,
                    amount_
                )
            );
        }
    }

    function updateBindingInfo(
        address token_,
        uint256 minAmount_,
        bool enabled_
    ) external onlyAdmin {
        bindings[token_] = BindingInfo(minAmount_, enabled_);
        emit BindingInfoUpdated(token_, minAmount_, enabled_);
    }

    function updateExecutionChain(uint16 executionChainId_) external onlyAdmin {
        executionChainId = executionChainId_;
        emit ExecutionChainUpdated(executionChainId_, msg.sender);
    }

    function updateCipCaller(address cipCaller_) external onlyAdmin {
        if (cipCaller_ == address(0)) {
            revert ErrZeroAddress();
        }
        cipCaller = cipCaller_;
        emit CipCallerUpdated(cipCaller_, msg.sender);
    }

    function updateCipExecutor(address cipExecutor_) external onlyAdmin {
        if (cipExecutor_ == address(0)) {
            revert ErrZeroAddress();
        }
        cipExecutor = cipExecutor_;
        emit CipExecutorUpdated(cipExecutor_, msg.sender);
    }

    function updateDexCallerContract(
        bytes32 dexCallerContract_
    ) external onlyAdmin {
        dexCallerContract = dexCallerContract_;
        emit DexCallerContractUpdated(dexCallerContract_, msg.sender);
    }

    function updateDexExecutionContract(
        string calldata dexExecutionContract_
    ) external onlyAdmin {
        dexExecutionContract = dexExecutionContract_;
        emit DexExecutionContractUpdated(dexExecutionContract_, msg.sender);
    }
}
