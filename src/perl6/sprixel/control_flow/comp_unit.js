
// a compilation (evaluation) unit
Act.types.comp_unit = function(){
    do { switch(this.phase) {
    case 0:
        this.phase = 1;
        return this.next = new Act(this.node.statementlist, this);
    default: break;
    } } while (false);
    this.result = this.next.result;
    this.next = null;
    throw 'program_done';
};
1;