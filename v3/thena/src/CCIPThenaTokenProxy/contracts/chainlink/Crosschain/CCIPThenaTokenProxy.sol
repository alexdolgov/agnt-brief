
// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import {CCIPReceiver} from "@chainlink/contracts-ccip/src/v0.8/ccip/applications/CCIPReceiver.sol";
import {LinkTokenInterface} from "@chainlink/contracts/src/v0.8/interfaces/LinkTokenInterface.sol";
import {IRouterClient} from "@chainlink/contracts-ccip/src/v0.8/ccip/interfaces/IRouterClient.sol";
import {Client} from "@chainlink/contracts-ccip/src/v0.8/ccip/libraries/Client.sol";


/*
    @Notice Thena $THE simple crosschain token interface for CCIP. 
    @author Prometheus
*/

contract CCIPThenaTokenProxy is Ownable, CCIPReceiver, ReentrancyGuard {

    using SafeERC20 for IERC20;

    
    /* ---------------------------- */ 
    /* ---------------------------- */ 
    /*          STORAGE             */
    /* ---------------------------- */ 
    /* ---------------------------- */ 
    
    // Link token ERC677 interface
    LinkTokenInterface public linkToken;  

    // address(this) chain
    uint64 internal chainId;         
    
    // token to bridge (eg. $THE)
    IERC20 public token;        
   
    // MAP CCIPTokenProxy for a given chainID. Do not store this.chaindId
    //mapping(uint64 => address) public chainIdToProxy;
    
    // MAP chain EVM ID flags. Do not store this.chaindId
    mapping(uint64 => bool) internal _isChain;

    // MAP EVM ID with CCIP Selector
    mapping(uint64 => uint64) internal _chainToChainSelector;

    // MAP CCIP Selector with EVM ID
    mapping(uint64 => uint64) internal _chainIdSelectorToChainId;

    // MAP Tokens allowed to be sent
    
    // Store CCIPTokenProxy for a given EVM chainID. Do not store this.chaindId
    mapping(uint64 => address) internal chainIdToProxy;
    
    /* ---------------------------- */ 
    /* ---------------------------- */ 
    /*          ERRORS              */
    /* ---------------------------- */ 
    /* ---------------------------- */ 

    error AddressZero();
    error ChainIDNotActive();
    error SelectorNotActive();
    error SameChain();
    error FeeLow();
    error CallFailed();
    error TokenAmountZero();
    error NotAllowedSender();
    
    /* ---------------------------- */ 
    /* ---------------------------- */ 
    /*          CCIP EVENT          */
    /* ---------------------------- */ 
    /* ---------------------------- */ 

    
    // Event emitted when a message is sent to another chain.
    event MessageSent(
        bytes32 indexed messageId, // The unique ID of the CCIP message.
        uint64 indexed destChainId, // The chain selector of the destination chain.
        Client.EVM2AnyMessage message,// CCIP message
        address feeToken, // the token address used to pay CCIP fees. (addr(0) = native token!)
        uint256 fees // The fees paid for sending the CCIP message.
    );

    // Event emitted when a message is received from another chain.
    event MessageReceived(
        bytes32 indexed messageId, // The unique ID of the CCIP message.
        uint64 indexed srcChainId, // The chain selector of the source chain.
        address sender, // The address of the sender from the source chain.
        bytes data // The data that was received.
    );

    /* ---------------------------- */ 
    /* ---------------------------- */ 
    /*          CONSTRUCTOR         */
    /* ---------------------------- */ 
    /* ---------------------------- */ 

    /// @notice Constructor initializes the contract.
    /// @param _router  The address of the router contract.
    /// @param _link    The address of the link contract ERC-677.
    /// @param _token   The underlying to lock and burn on this chaind id.
    constructor(address _router, address _link, address _token) CCIPReceiver(_router) {
        linkToken = LinkTokenInterface(_link);
        token = IERC20(_token);
        
        uint64 _chainId;
        assembly {
            _chainId := chainid()
        }
        chainId = _chainId;

        linkToken.approve(_router, type(uint256).max);
        token.safeApprove(_router, type(uint256).max);
    }

    
    /* ---------------------------- */ 
    /* ---------------------------- */ 
    /*          USER INTERACTION    */
    /* ---------------------------- */ 
    /* ---------------------------- */ 

    /// @notice Transfer $THE token to another chain
    /// @param destChainId  EVM ID of destination chain. EG.: ETH = 1
    /// @param amount       amount of token to send
    /// @param to           receiver address
    /// @param fee_type     true = native, false = link
    function transferCrosschain(uint64 destChainId, uint amount, address to, bool fee_type) external payable nonReentrant returns (bytes32 messageId) {
        
        if(!_isChain[destChainId]) revert ChainIDNotActive(); 
        if(chainId == destChainId) revert SameChain(); 
    
        // get token
        token.safeTransferFrom(msg.sender, address(this), amount);
                        
        // prep message
        Client.EVM2AnyMessage memory evm2AnyMessage = _buildMessage(address(token), to, amount, fee_type);
               
        // Send the message through the router and store the returned message ID
        address router = this.getRouter();
        messageId = _send(router, _chainToChainSelector[destChainId], evm2AnyMessage, fee_type);
        
        // Return the message ID
        return messageId;
    }


    /* ---------------------------- */ 
    /* ---------------------------- */ 
    /*          INTERNAL            */
    /* ---------------------------- */ 
    /* ---------------------------- */ 

    /// @notice Build evm2AnyMessage structure for CCIP
    /// @param _token   token to send
    /// @param receiver receiver address
    /// @param amount   amount to transfer 
    /// @param fee_type true = native, false = link
    function _buildMessage(address _token, address receiver, uint amount, bool fee_type) internal view returns(Client.EVM2AnyMessage memory evm2AnyMessage) {
        
        if(amount == 0) revert TokenAmountZero();
        if(receiver == address(0)) revert AddressZero();

        // set data
        Client.EVMTokenAmount[] memory tokenAmounts = new Client.EVMTokenAmount[](1);  
        tokenAmounts[0] = Client.EVMTokenAmount(_token, amount);
        Client.EVMExtraArgsV1 memory extraArgs = Client.EVMExtraArgsV1({gasLimit: 2_000_000, strict: false});

        // Create an EVM2AnyMessage struct in memory with necessary information for sending a cross-chain message
        evm2AnyMessage = Client.EVM2AnyMessage({
            receiver: abi.encode(receiver), 
            data: "", 
            tokenAmounts: tokenAmounts, 
            extraArgs: Client._argsToBytes(extraArgs), // extra args,
            feeToken: fee_type ? address(0) : address(linkToken) // native == true, link == false 
        });

    }
    
    /// @notice Send a message using CCIP
    /// @param _router      Chainlink router
    /// @param destChainId  Chain ID Selector
    /// @param message      Message to send
    /// @param fee_type     true = native, false = link
    function _send(address _router, uint64 destChainId, Client.EVM2AnyMessage memory message, bool fee_type) internal returns(bytes32 messageId){
        
        // Initialize a router client instance to interact with cross-chain router
        IRouterClient router = IRouterClient(_router);

        // Get the fee required to send the message
        uint fee = router.getFee(destChainId, message);

        // Send the message through the router and store the returned message ID
        if (!fee_type) {
            // get fee and approve router spending
            IERC20(address(linkToken)).safeTransferFrom(msg.sender, address(this), fee);
            IERC20(address(linkToken)).approve(_router, fee);
            if( linkToken.balanceOf(address(this)) < fee) revert FeeLow();
            messageId = router.ccipSend(destChainId,message);
        } else {
            if( address(this).balance < fee ) revert FeeLow();  
            messageId = router.ccipSend{value: fee}(destChainId,message);
        }
        
        emit MessageSent(messageId, destChainId, message, fee_type ? address(0) : address(linkToken), fee);

        return messageId;
    }


    /// @notice Internal receive function. Called by CCIP Router only (see CCIPReceive.sol)
    /// @param any2EvmMessage Received message
    function _ccipReceive(Client.Any2EVMMessage memory any2EvmMessage) internal override nonReentrant {
        
        uint64 srcChain = any2EvmMessage.sourceChainSelector;
        address sender = abi.decode(any2EvmMessage.sender, (address));

        if(!_isChainSelector(srcChain)) revert SelectorNotActive();
        if(!_isAllowedSenderSelector(sender, srcChain)) revert NotAllowedSender();

        emit MessageReceived(any2EvmMessage.messageId, srcChain, sender, any2EvmMessage.data);
    }

  
    /* ---------------------------- */ 
    /* ---------------------------- */ 
    /*              VIEW            */
    /* ---------------------------- */ 
    /* ---------------------------- */ 

    /// @notice Check Sender is allowed to call CCIP Receive
    /// @param sender   function caller (any2EvmMessage.sender)
    /// @param id       EVM ID of source message
    function isAllowedSender(address sender, uint64 id) external view returns(bool){
        return sender == chainIdToProxy[id];
    }

    
    /// @notice Check Sender is allowed to call CCIP Receive
    /// @param sender   function caller (any2EvmMessage.sender)
    /// @param selector $THE CCIP Selector of source chain
    function isAllowedSenderSelector(address sender, uint64 selector) external view returns(bool){
        return _isAllowedSenderSelector(sender, selector);
    }

    function _isAllowedSenderSelector(address sender, uint64 selector) internal view returns(bool) {
        uint64 chain = _chainIdSelectorToChainId[selector];
        return sender == chainIdToProxy[chain];
    }


    /// @notice Check chain is allowed
    /// @param chain EVM ID
    function isChain(uint64 chain) external view returns(bool){
        return _isChain[chain];
    }

    /// @notice Check chain is allowed
    /// @param selector CCIP Selector
    function isChainSelector(uint64 selector) external view returns(bool){
        return _isChainSelector(selector);
    }

    function _isChainSelector(uint64 selector) internal view returns(bool){
        uint64 chain = _chainIdSelectorToChainId[selector];
        return _isChain[chain];
    }

    /// @notice Get the EVM ID given a CCIP Selector
    /// @param selector CCIP Selector
    function chainSelectorToChainId(uint64 selector) external view returns(uint64) {
        return _chainToChainSelector[selector];
    }

    
    /// @notice Get the CCIP selector given EVM ID
    /// @param id EVM ID
    function chainIdToChainSelector(uint64 id) external view returns(uint64) {
        return _chainToChainSelector[id];
    }

    /// @notice Get the fee to pay to use CCIP
    /// @param destChainId      EVM ID of the destination chain 
    /// @param evm2AnyMessage   CCIP evm2AnyMessage structure
    function getFee(uint64 destChainId, Client.EVM2AnyMessage calldata evm2AnyMessage) external view returns(uint fee) {
        address _router = this.getRouter();
        IRouterClient router = IRouterClient(_router);
        fee = router.getFee(destChainId, evm2AnyMessage);
    }

    /// @notice Get the fee to pay to use CCIP
    /// @param destChainId  EVM ID of destination chain. 
    /// @param amount       amount of token to send
    /// @param to           receiver address
    /// @param fee_type     true = native, false = link
    function getFeeSimple(uint64 destChainId, uint amount, address to, bool fee_type) external view returns(uint fee) {

        if(to == address(0)) revert AddressZero();
        if(amount == 0) revert TokenAmountZero();

        Client.EVM2AnyMessage memory evm2AnyMessage = _buildMessage(address(token), to, amount, fee_type);

        address _router = this.getRouter();
        IRouterClient router = IRouterClient(_router);
        uint64 selector = _chainToChainSelector[destChainId];

        fee = router.getFee(selector, evm2AnyMessage);
    }




    /* ---------------------------- */ 
    /* ---------------------------- */ 
    /*          CCIP SETTINGS       */
    /* ---------------------------- */ 
    /* ---------------------------- */ 
    
    /// @notice Set EVM ID and CCIP Selector
    /// @param _chainId EVM Chain ID
    /// @param _chainIdSelector CCIP Selector
    function setChainIdSelector(uint64[] calldata _chainId, uint64[] calldata _chainIdSelector) external onlyOwner {
        uint64 selector;
        uint64 id;
        for(uint i = 0; i < _chainId.length; i++){
            selector = _chainIdSelector[i];
            id = _chainId[i];
            require(_isChain[id], 'not allowed chain');

            _chainToChainSelector[id] = selector;
            _chainIdSelectorToChainId[selector] = id;
        }
    }

      
    /// @notice Add chain ID
    /// @dev    refer to https://chainlist.org/ 
    function addChain(uint64[] calldata chains) external onlyOwner {
        for(uint i = 0; i < chains.length; i++){
            _isChain[chains[i]] = true;
        }
    }

    /// @notice Remove chain ID
    function removeChain(uint64[] calldata chains) external onlyOwner {
        for(uint i = 0; i < chains.length; i++){
            _isChain[chains[i]] = false;
        }
    }


    function addProxy(address proxy, uint64 chainid) external onlyOwner {
        require(proxy != address(0));
        if(!_isChain[chainid]) revert ChainIDNotActive(); 
        if(chainId == chainid) revert SameChain(); 
        chainIdToProxy[chainid] = proxy;
    }

    function recoverStuckERC20(address _token, uint amount) external onlyOwner {
        require(IERC20(_token).balanceOf(address(this)) >= amount);
        IERC20(_token).safeTransfer(msg.sender, amount);
    }

    function recoverBalance() external payable onlyOwner {
        uint256 balance = address(this).balance;
        (bool status, ) = payable(owner()).call{value: balance}("");
        if(!status) revert CallFailed();    
    }

    function setLinkToken(address linktoken) external onlyOwner {
        linkToken = LinkTokenInterface(linktoken);
    }


    /// @notice Fallback function to allow the contract to receive Ether.
    /// @dev This function has no function body, making it a default function for receiving Ether.
    /// It is automatically called when Ether is sent to the contract without any data.
    receive() external payable {}
    
}