pragma solidity 0.8.28;

import {IPermastaker} from "interfaces/IPermastaker.sol";
import {IVoter} from "interfaces/IVoter.sol";
import {IRegistry} from "interfaces/IRegistry.sol";

contract PermastakerOperator {
    IRegistry public constant registry = IRegistry(0x10101010E0C3171D894B71B3400668aF311e7D94);
    IPermastaker public immutable permastaker;
    address public operator;
    mapping(address => bool) public approved;
    
    event Approved(address indexed account, bool indexed approved);
    event SetOperator(address indexed operator);
    
    modifier onlyOperator() {
        require(
            msg.sender == operator ||
            msg.sender == permastaker.owner(),
            "Not operator"
        );
        _;
    }

    modifier onlyApproved() {
        require(
            approved[msg.sender] ||
            msg.sender == operator ||
            msg.sender == owner(),
            "Not approved"
        );
        _;
    }

    constructor(address _permastaker, address _operator, address[] memory _approved) {
        permastaker = IPermastaker(_permastaker);
        operator = _operator;
        emit SetOperator(_operator);
        for (uint256 i = 0; i < _approved.length; i++) {
            approved[_approved[i]] = true;
            emit Approved(_approved[i], true);
        }
    }

    function voteForProposal(uint256 _proposalId) external onlyOperator {
        permastaker.safeExecute(
            address(voter()),
            abi.encodeWithSelector(
                bytes4(keccak256("voteForProposal(address,uint256)")),
                address(permastaker),
                _proposalId
            )
        );
    }

    function voteForProposal(uint256 _proposalId, uint256 _pctYes, uint256 _pctNo) external onlyOperator {
        permastaker.safeExecute(
            address(voter()),
            abi.encodeWithSelector(
                bytes4(keccak256("voteForProposal(address,uint256,uint256,uint256)")),
                address(permastaker),
                _proposalId,
                _pctYes,
                _pctNo
            )
        );
    }

    function createNewProposal(IVoter.Action[] memory _payload, string calldata _description) external onlyOperator returns (uint256) {
        bytes memory data = permastaker.safeExecute(
            address(voter()),
            abi.encodeWithSelector(IVoter.createNewProposal.selector, address(permastaker), _payload, _description)
        );
        return abi.decode(data, (uint256));
    }

    function safeExecute(address _target, bytes memory _data) external onlyOperator returns (bytes memory) {
        return permastaker.safeExecute(_target, _data);
    }

    function setApproved(address _account, bool _approved) external onlyOperator {
        approved[_account] = _approved;
        emit Approved(_account, _approved);
    }

    function claimAndStake() external onlyApproved returns (uint256) {
        return permastaker.claimAndStake();
    }

    function setOperator(address _operator) external {
        require(msg.sender == owner(), "Not owner");
        operator = _operator;
        emit SetOperator(_operator);
    }

    function owner() public view returns (address) {
        return permastaker.owner();
    }

    function voter() public view returns (address) {
        return registry.getAddress("VOTER");
    }
}