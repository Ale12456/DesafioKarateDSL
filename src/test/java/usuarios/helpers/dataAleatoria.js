function fn() {
  return {
    generarEmail: function() {
      return 'qa' + java.util.UUID.randomUUID() + '@mail.com';
    }
  };
}
