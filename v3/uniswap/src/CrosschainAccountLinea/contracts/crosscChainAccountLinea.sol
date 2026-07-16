pragma solidity 0.7.6;

interface Messenger {
    function sendMessage(address _target, bytes memory _message, uint32 _gasLimit) external;

    function relayMessage(
        address _target,
        address _sender,
        bytes memory _message,
        uint256 _messageNonce
    ) external;
}

interface IMessageService {
  function sender() external view returns (address);
}

// L2 Contract which receives messages from a specific L1 address and transparently
// forwards them to the destination.
// 
// Any other L2 contract which uses this contract's address as a privileged position,
// can be considered to be owned by the `l1Owner`
contract CrosschainAccountLinea {
    IMessageService public messageService;
    address l1Owner;

    constructor(address _l1Owner, address _messageService) {
        messageService = IMessageService(_messageService);
        l1Owner = _l1Owner;
    }

    // `forward` `calls` the `target` with `data`, 
    // can only be called by the `messenger`
    // can only be called if `tx.l1MessageSender == l1Owner`
    function forward(address target, bytes memory data) external {
        // 1. The call Must not from the Messager
        require(msg.sender == address(messageService),"Sender is the message service");
        // 2. The call MUST come from the L1 Messenger
        require(messageService.sender() == address(l1Owner), "Sender is not the _l1Owner");
        // 2. Make the external call
        (bool success, bytes memory res) = target.call(data);
        require(success, string(abi.encode("XChain call failed:", res)));
    }
}