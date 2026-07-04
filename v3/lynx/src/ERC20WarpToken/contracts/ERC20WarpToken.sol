// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "@vialabs/contracts/message/MessageClient.sol";
import "@openzeppelin/contracts-4/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts-4/token/ERC20/utils/SafeERC20.sol";

interface IBurnableToken {
    function burn(uint256 amount) external;
    function totalSupply() external;
    function balanceOf(address account) external;
    function transfer(address recipient, uint256 amount) external;
    function allowance(address owner, address spender) external;
    function approve(address spender, uint256 amount) external;
    function transferFrom(address sender, address recipient, uint256 amount) external;
}

contract ERC20WarpToken is ERC20Burnable, MessageClient {
    IBurnableToken public immutable baseToken;
    uint256 public immutable homeChain;
    uint256 public immutable chainId;
    uint8 public immutable tokenDecimals;

    uint256 private _fee = 1 ether;
    bool private _canGoBack = false;
    address private _feeBeneficiary;

    event TokensReceived(address _eTo, uint256 _eAmount);
    event FeeChanged(uint256 _amount);
    event BeneficiaryChanged(address _beneficiary);
    event StatusChanged(bool _status);

    /**
     * On the "homeChain" the baseToken will be transferred to this contract and the equivalent amount of tokens will be minted on
     * the destination chain. On the destination chain the "new" ERC20 will be minted and transferred to the recipient. When bridging
     * back from a new chain to the home chain, the tokens will be burned on the destination chain and the equivalent amount will be
     * unlocked on the home chain from this contract. This acts as a "locker" for the tokens on the home chain.
     *
     * On each new non-home chain, the tokens will be burned on the source chain and minted on the destination chain (like helloerc20)
     *
     * @param _homeChain chain ID of the original ERC20 token
     * @param _baseToken address of the original ERC20 token (blank if not on the home chain)
     * @param _tokenName name of the ERC20 token on each additional chain (blank if on the home chain)
     * @param _tokenSymbol symbol of the ERC20 token on each additional chain (blank if on the home chain)
     * @param _tokenDecimals decimals of the ERC20 token on each additional chain
     */
    constructor(
        uint256 _homeChain,
        address _baseToken,
        string memory _tokenName,
        string memory _tokenSymbol,
        uint8 _tokenDecimals
    ) ERC20(_tokenName, _tokenSymbol) {
        baseToken = IBurnableToken(_baseToken);
        homeChain = _homeChain;
        chainId = block.chainid;
        tokenDecimals = _tokenDecimals;

        // @note Some sane initial value. But allow to change.
        _feeBeneficiary = MESSAGE_OWNER;
    }

    /**
     * Function to collect the accumulated fees in a much cheaper way compared to moving them on every tx. onlyMessageOwner can be omitted.
     *
     */
    function collect() external onlyMessageOwner {
        (bool sent, ) = payable(_feeBeneficiary).call{
            value: address(this).balance
        }("");
        require(sent, "Failed to send Ether");
    }

    /**
     * Function to set the fee
     *
     * @param _amount amount of desired fee
     */
    function setFee(uint256 _amount) external onlyMessageOwner {
        _fee = _amount;

        emit FeeChanged(_fee);
    }

    /**
     * Function to set the fee
     *
     * @param _beneficiary address that will receive the fees collected over time
     */
    function setBeneficiary(address _beneficiary) external onlyMessageOwner {
        _feeBeneficiary = _beneficiary;

        emit BeneficiaryChanged(_feeBeneficiary);
    }

    /**
     * Function to set if going back is allowed (for future use, as there will be no tokens locked, everything is burned)
     *
     * @param _status whether to allow going back or not
     */
    function setStatus(bool _status) external onlyMessageOwner {
        _canGoBack = _status;

        emit StatusChanged(_canGoBack);
    }

    /**
     * Bridge tokens from the current chain to the destination chain. If the current chain is the home chain, the tokens will be
     * transferred to this contract locked. If the current chain is not the home chain, the tokens will be burned on the current chain.
     * Function is "payable"
     *
     * After locking or burning, a cross chain message will be sent to the destination chain with the recipient and amount of tokens.
     *
     * @param _destChainId chain ID of the destination chain
     * @param _recipient address of the recipient on the destination chain
     * @param _amount amount of tokens to bridge
     */
    function bridge(
        uint256 _destChainId,
        address _recipient,
        uint256 _amount
    ) external payable onlyActiveChain(_destChainId) {
        require(msg.value == _fee, "Sent fee amount is incorrect");

        // @note needs this as onlyActiveChain() will have a valid chain because we need to receive messages from those chains in onlySelf(_sender, _sourceChainId)
        if (_destChainId == homeChain) {
            require(_canGoBack == true, "Going back is not allowed");
        }

        if (chainId == homeChain) {
            baseToken.transferFrom(msg.sender, address(this), _amount);
            // burn tokens if home chain
            baseToken.burn(_amount);
        } else {
            // burn tokens if "new" chain
            _burn(msg.sender, _amount);
        }

        // send cross chain message
        _sendMessage(_destChainId, abi.encode(_recipient, _amount));
    }

    function decimals() public view override returns (uint8) {
        return tokenDecimals;
    }

    /**
     * If the destination chain is the home chain, the tokens will be unlocked and transferred to the recipient. If the destination
     * chain is not the home chain, the tokens will be minted on the destination chain and transferred to the recipient.
     */
    function messageProcess(
        uint256,
        uint256 _sourceChainId,
        address _sender,
        address,
        uint256,
        bytes calldata _data
    ) external override onlySelf(_sender, _sourceChainId) {
        (address _recipient, uint256 _amount) = abi.decode(
            _data,
            (address, uint256)
        );

        if (chainId == homeChain) {
            // this won't trigger, do nothing
        } else {
            // mint tokens of "new" chain
            _mint(_recipient, _amount);
        }

        emit TokensReceived(_recipient, _amount);
    }

    /**
     * Function to read the fee
     *
     */
    function getFee() external view returns (uint256) {
        return _fee;
    }

    /**
     * Function to read the beneficiary
     *
     */
    function getBeneficiary() external view returns (address) {
        return _feeBeneficiary;
    }

    /**
     * Function to read the status
     *
     */
    function getStatus() external view returns (bool) {
        return _canGoBack;
    }
}
