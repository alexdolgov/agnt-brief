// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {IVoter} from "contracts/interfaces/IVoter.sol";

enum Module {
    RESOLVER,
    DEPRECATED_TIME,
    PROXY,
    SINGLE_EXEC,
    WEB3_FUNCTION,
    TRIGGER
}

enum TriggerType {
    TIME,
    CRON,
    EVENT,
    BLOCK
}

struct ModuleData {
    Module[] modules;
    bytes[] args;
}

interface IAutomate {
    function createTask(
        address execAddress,
        bytes calldata execDataOrSelector,
        ModuleData calldata moduleData,
        address feeToken
    ) external returns (bytes32 taskId);

    function cancelTask(bytes32 taskId) external;

    function getFeeDetails() external view returns (uint256, address);

    function gelato() external view returns (address payable);

    function taskModuleAddresses(Module) external view returns (address);
}

interface IProxyModule {
    function opsProxyFactory() external view returns (address);
}

interface IOpsProxyFactory {
    function getProxyOf(address account) external view returns (address, bool);
    function deploy() external returns (address payable proxy);
}

interface IGelato1Balance {
    function depositNative(address _sponsor) external payable;

    function depositToken(address _sponsor, address _token, uint256 _amount) external;
}

interface IGelato {
    function feeCollector() external view returns (address);
}

/**
 * @dev Inherit this contract to allow your smart contract to
 * - Make synchronous fee payments.
 * - Have call restrictions for functions to be automated.
 */
// solhint-disable private-vars-leading-underscore
abstract contract AutomateReady {
    IAutomate public immutable automate;
    address public immutable dedicatedMsgSender;
    address private immutable feeCollector;
    address internal constant ETH = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

    /**
     * @dev
     * Only tasks created by _taskCreator defined in constructor can call
     * the functions with this modifier.
     */
    modifier onlyDedicatedMsgSender() {
        require(msg.sender == dedicatedMsgSender, "Only dedicated msg.sender");
        _;
        _transferFees();
    }

    /**
     * @dev
     * _taskCreator is the address which will create tasks for this contract.
     */
    constructor(address _automate) {
        automate = IAutomate(_automate);
        IGelato gelato = IGelato(IAutomate(_automate).gelato());

        feeCollector = gelato.feeCollector();

        address proxyModuleAddress = IAutomate(_automate).taskModuleAddresses(Module.PROXY);

        address opsProxyFactoryAddress = IProxyModule(proxyModuleAddress).opsProxyFactory();

        dedicatedMsgSender = IOpsProxyFactory(opsProxyFactoryAddress).deploy();
    }

    /**
     * @dev
     * Transfers fee to gelato for synchronous fee payments.
     *
     * _fee & _feeToken should be queried from IAutomate.getFeeDetails()
     */
    function _transferFees() internal {
        (uint256 _fee, address _feeToken) = automate.getFeeDetails();

        if (_feeToken == ETH) {
            (bool success,) = feeCollector.call{value: _fee}("");
            require(success, "_transfer: ETH transfer failed");
        } else {
            SafeERC20.safeTransfer(IERC20(_feeToken), feeCollector, _fee);
        }
    }

    function _getFeeDetails() internal view returns (uint256 fee, address feeToken) {
        (fee, feeToken) = automate.getFeeDetails();
    }
}

contract ShadowGelatoTask is AutomateReady {
    IVoter public constant voter = IVoter(0x9F59398D0a397b2EEB8a6123a6c7295cB0b0062D);
    address public immutable owner;
    bytes32 public taskId;

    mapping(uint256 period => uint256 index) public periodToUpdatedIndex;
    mapping(uint256 period => mapping(address gauge => uint256 retries)) public retriesForGauge;
    mapping(uint256 period => bool) public periodFinished;

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    constructor() AutomateReady(address(0xafd37d0558255aA687167560cd3AaeEa75c2841E)) {
        owner = msg.sender;
        createTask();
    }

    function checker() external view returns (bool canExec, bytes memory execPayload) {
        uint256 period = block.timestamp / 1 weeks;

        if (periodFinished[period]) {
            return (false, "Up to date");
        }

        uint256 totalLength = voter.getGaugesLength();

        uint256 updatedIndex = periodToUpdatedIndex[period];

        if (totalLength >= updatedIndex) {
            return (true, abi.encodeCall(this.gelatoBatch, (updatedIndex, updatedIndex + 5)));
        }

        for (uint256 i = 0; i < totalLength; i++) {
            address gauge = voter.getGauge(i);
            if (voter.lastDistro(gauge) != period && retriesForGauge[period][gauge] < 3) {
                return (true, abi.encodeCall(this.gelatoSingle, (gauge)));
            }
        }

        return (true, abi.encodeCall(this.gelatoFinished, (period)));
    }

    function gelatoBatch(uint256 startIndex, uint256 endIndex) external onlyDedicatedMsgSender {
        voter.batchDistributeByIndex(startIndex, endIndex);
        uint256 period = block.timestamp / 1 weeks;
        periodToUpdatedIndex[period] = endIndex;
    }

    function gelatoSingle(address gauge) external onlyDedicatedMsgSender {
        retriesForGauge[block.timestamp / 1 weeks][gauge]++;
        (bool success,) = address(voter).call(abi.encodeCall(voter.distribute, (gauge)));
        success; // silence unused variable warning
    }

    function gelatoFinished(uint256 period) external onlyDedicatedMsgSender {
        periodFinished[period] = true;
    }

    function retrieveGas(uint256 value) external onlyOwner {
        (bool success,) = payable(owner).call{value: value}("");
        success; // silence unused variable warning
    }

    function createTask() public onlyOwner {
        require(taskId == bytes32(0), "Task exists");
        Module[] memory modules = new Module[](2);
        modules[0] = Module.RESOLVER;
        modules[1] = Module.PROXY;
        bytes[] memory args = new bytes[](2);
        args[0] = abi.encode(address(this), abi.encodeCall(this.checker, ()));
        args[1] = "";
        ModuleData memory moduleData = ModuleData({modules: modules, args: args});

        taskId = _createTask(address(this), "0x00000000", moduleData, ETH);
    }

    function cancelTask() public onlyOwner {
        require(taskId != bytes32(0), "No task exists");
        _cancelTask(taskId);
        taskId = bytes32(0);
    }

    function _createTask(
        address _execAddress,
        bytes memory _execDataOrSelector,
        ModuleData memory _moduleData,
        address _feeToken
    ) internal returns (bytes32) {
        return automate.createTask(_execAddress, _execDataOrSelector, _moduleData, _feeToken);
    }

    function _cancelTask(bytes32 _taskId) internal {
        automate.cancelTask(_taskId);
    }
}
