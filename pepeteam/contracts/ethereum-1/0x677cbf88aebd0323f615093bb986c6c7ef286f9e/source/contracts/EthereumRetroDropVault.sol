// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "./IERC20.sol";
import "./CIP.sol";
import "./utils.sol";
import "./Initializable.sol";
import "./Pausable.sol";
import "./Stakable.sol";
import "./IWavesCaller.sol";
import "./ILidoToken.sol";
import "./ICoinBridge.sol";
import "./ILidoWithdrawalQueue.sol";

contract EthereumRetroDropVault is Initializable, Pausable, Stakable {
    event ProposeTransition(address bridge, uint16 chainId);

    uint256 public constant BLOCKS_IN_WEEK = 40_320;
    uint256 constant DIVIDER = 10 ** 12;

    IWavesCaller public protocolCaller;
    string public retrodropContract;
    uint16 public wavesChainId;
    uint256 public withdrawBlock;
    ICoinBridge public coinBridge;

    ILidoToken public stETH;
    ILidoWithdrawalQueue public withdrawalQueue;

    mapping(address => uint256) public balanceOf;
    uint256 public totalSupply;
    bool public isTransitionEnabled;
    uint16 public transitionChainId;

    struct BridgeProposal {
        address to;
        bytes32 codehash;
        uint16 chainId;
    }
    uint public proposedBridgeReadyAt;
    BridgeProposal public proposedBridge;

    function init(
        address admin_,
        address protocolCaller_,
        address stETH_,
        address withdrawalQueue_,
        uint16 wavesChainId_,
        uint256 withdrawBlock_,
        string calldata retrodropContract_
    ) external whenNotInitialized {
        require(admin_ != address(0), "admin zero address");
        require(protocolCaller_ != address(0), "caller zero address");
        require(stETH_ != address(0), "lido token zero address");
        require(withdrawalQueue_ != address(0), "queue zero address");
        require(withdrawBlock_ > block.number, "invalid block");
        admin = admin_;
        pauser = admin_;
        staker = admin_;
        protocolCaller = IWavesCaller(protocolCaller_);
        stETH = ILidoToken(stETH_);
        withdrawalQueue = ILidoWithdrawalQueue(withdrawalQueue_);
        retrodropContract = retrodropContract_;
        wavesChainId = wavesChainId_;
        withdrawBlock = withdrawBlock_;
        isInited = true;
        isTransitionEnabled = false;

        assert(stETH.approve(withdrawalQueue_, type(uint256).max));
    }

    // DEPOSIT
    receive() external payable {
        if (msg.sender != address(withdrawalQueue)) {
            deposit("");
        }
    }

    function deposit(
        string memory referrer_
    ) public payable whenNotPaused whenInitialized {
        require(!isTransitionEnabled, "transition enabled");
        balanceOf[msg.sender] += msg.value;
        totalSupply += msg.value;
        CIP.deposit(
            wavesChainId,
            retrodropContract,
            address(protocolCaller),
            msg.sender,
            "ETH",
            msg.value / DIVIDER,
            referrer_
        );
    }

    // STAKE
    function stake(
        uint256 amount_
    ) external whenNotPaused whenInitialized onlyStaker returns (uint256) {
        require(!isTransitionEnabled, "transition enabled");
        return stETH.submit{value: amount_}(address(0));
    }

    // UNSTAKE
    function unstake(
        uint256[] calldata amounts_
    )
        external
        whenNotPaused
        whenInitialized
        returns (uint256[] memory requestIds)
    {
        require(
            block.number > withdrawBlock ||
                proposedBridgeReadyAt > 0 ||
                msg.sender == staker ||
                isTransitionEnabled,
            "unstake is not allowed"
        );
        return withdrawalQueue.requestWithdrawals(amounts_, address(this));
    }

    function unstakeFinalize(
        uint256 requestId_
    ) external whenNotPaused whenInitialized {
        require(
            block.number > withdrawBlock ||
                proposedBridgeReadyAt > 0 ||
                msg.sender == staker ||
                isTransitionEnabled,
            "unstake finalize is not allowed"
        );
        withdrawalQueue.claimWithdrawal(requestId_);
    }

    // WITHDRAW
    function withdraw() external whenNotPaused whenInitialized {
        uint256 balance = balanceOf[msg.sender];
        require(
            block.number > withdrawBlock ||
                proposedBridgeReadyAt > 0 ||
                isTransitionEnabled,
            "withdraw is not allowed"
        );
        require(balance > 0, "insufficient funds");

        balanceOf[msg.sender] = 0;
        totalSupply -= balance;
        payable(msg.sender).transfer(balance);
    }

    function withdrawUnaccounted(
        address token_,
        address faultManager_
    ) external whenNotPaused whenInitialized onlyAdmin {
        require(faultManager_ != address(0), "zero address");

        if (token_ == address(0)) {
            uint256 diff = address(this).balance - totalSupply;
            payable(faultManager_).transfer(diff);
        } else if (token_ != address(stETH)) {
            uint256 balance = IERC20(token_).balanceOf(address(this));

            // safe call for USDT
            (bool success_, bytes memory data_) = token_.call{value: 0}(
                abi.encodeWithSelector(
                    IERC20(token_).transfer.selector,
                    address(faultManager_),
                    balance
                )
            );
            if (success_) {
                require(
                    data_.length == 0 || abi.decode(data_, (bool)),
                    "call did not succeed"
                );
            } else {
                if (data_.length > 0) {
                    /// @solidity memory-safe-assembly
                    assembly {
                        let returndata_size := mload(data_)
                        revert(add(32, data_), returndata_size)
                    }
                } else {
                    revert("no error");
                }
            }
        }
    }

    // BRIDGE
    function proposeTransition(
        address bridge_,
        uint16 chainId_
    ) external whenNotPaused whenInitialized onlyAdmin {
        require(!isTransitionEnabled, "transition already enabled");
        require(bridge_ != address(0), "zero address");
        proposedBridgeReadyAt = block.number + BLOCKS_IN_WEEK;
        proposedBridge = BridgeProposal({
            to: bridge_,
            codehash: bridge_.codehash,
            chainId: chainId_
        });
        emit ProposeTransition(bridge_, chainId_);
    }

    function cancelProposeTransition()
        external
        whenNotPaused
        whenInitialized
        onlyAdmin
    {
        require(proposedBridgeReadyAt > 0, "no proposal");
        proposedBridgeReadyAt = 0;
        proposedBridge = BridgeProposal(address(0), bytes32(0), uint16(0));
        emit ProposeTransition(address(0), uint16(0));
    }

    function enableTransition(
        address bridge_,
        uint16 chainId_
    ) external whenNotPaused whenInitialized onlyAdmin {
        require(!isTransitionEnabled, "transition already enabled");
        address proposedAddress = proposedBridge.to;
        bytes32 proposedCodehash = proposedBridge.codehash;
        uint16 proposedChainId = proposedBridge.chainId;

        require(proposedAddress != address(0), "empty address");
        require(block.number > proposedBridgeReadyAt, "not ready");
        require(bridge_ == proposedAddress, "invalid bridge address");
        require(
            bridge_.codehash == proposedCodehash,
            "invalid bridge codehash"
        );
        require(chainId_ == proposedChainId, "invalid chainId");

        coinBridge = ICoinBridge(bridge_);
        transitionChainId = proposedChainId;
        isTransitionEnabled = true;
    }

    function transition() external whenNotPaused whenInitialized {
        require(isTransitionEnabled, "transition is disabled");

        uint256 balance = balanceOf[msg.sender];
        require(balance > 0, "insufficient funds");
        balanceOf[msg.sender] = 0;
        totalSupply -= balance;

        coinBridge.lockTokens{value: balance}(
            transitionChainId,
            Utils.toHexString(msg.sender),
            "",
            0
        );
    }
}
